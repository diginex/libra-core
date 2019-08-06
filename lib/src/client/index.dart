import 'dart:async';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:http/http.dart' as http;
import 'dart:typed_data';
import 'package:flutter_libra_core/flutter_libra_core.dart';
import 'package:flutter_libra_core/src/Constants.dart';
import 'package:flutter_libra_core/src/client/Decoder.dart';
import 'package:flutter_libra_core/src/client/Encoder.dart';
import 'package:flutter_libra_core/src/wallet/Accounts.dart';
import 'package:flutter_libra_core/src/transaction/index.dart';
import 'package:flutter_libra_core/__generated__/proto/account_state_blob.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/admission_control.pbgrpc.dart';
import 'package:flutter_libra_core/__generated__/proto/get_with_proof.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/transaction.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/admission_control.pb.dart';

class LibraConfig {
  String host;
  int port;
  String network;
  String faucetServerHost;
  String validatorSetFile;

  LibraConfig(
      {this.host = ServerHosts.DefaultTestnet,
      this.port = 80,
      this.faucetServerHost = ServerHosts.DefaultFaucet,
      String validatorSetFile}) {
    if (validatorSetFile != null) {
      this.validatorSetFile = validatorSetFile;
    }
  }
}

class LibraClient {
  AdmissionControlClient _client;
  LibraConfig config;

  LibraClient({LibraConfig config}) {
    this.config = config == null ? new LibraConfig() : config;
    ChannelOptions options =
        new ChannelOptions(credentials: ChannelCredentials.insecure());
    ClientChannel channel = new ClientChannel(this.config.host,
        port: this.config.port, options: options);
    _client = new AdmissionControlClient(channel);
  }

  Future<LibraAccountState> getAccountState(String address) async {
    return (await getAccountStates([address]))[0];
  }

  Future<List<LibraAccountState>> getAccountStates(
      List<String> addresses) async {
    UpdateToLatestLedgerRequest request = new UpdateToLatestLedgerRequest();
    addresses.forEach((address) {
      RequestItem requestItem = new RequestItem();
      GetAccountStateRequest getAccountStateRequest =
          new GetAccountStateRequest();
      getAccountStateRequest.address = LibraHelpers.hexToBytes(address);
      requestItem.getAccountStateRequest = getAccountStateRequest;
      request.requestedItems.add(requestItem);
    });
    UpdateToLatestLedgerResponse ledgerResponse =
        await _client.updateToLatestLedger(request);
    List<LibraAccountState> states = [];
    ledgerResponse.responseItems.forEach((response) {
      GetAccountStateResponse stateResponse = response.getAccountStateResponse;
      AccountStateWithProof stateWithProof =
          stateResponse.accountStateWithProof;
      if (stateWithProof.hasBlob()) {
        var stateBlob = stateWithProof.blob;
        var blobBytes = stateBlob.blob;
        ByteBuffer buffer = Int8List.fromList(blobBytes).buffer;
        states.add(ClientDecoder.decodeAccountStateBlob(buffer));
      }
    });
    return states;
  }

  Future<LibraTransactionResponse> transferCoins(
    LibraAccount sender,
    String recipientAddress,
    int numCoins,
  ) async {
    LibraAccountState senderAccountState =
        await getAccountState(sender.getAddress());
    return execute(
        sender,
        LibraTransaction.createTransfer(recipientAddress, BigInt.from(numCoins),
            senderAccountState.sequenceNumber));
  }

  Future<LibraTransactionResponse> execute(
      LibraAccount sender, LibraTransaction transaction) async {
    RawTransaction rawTransaction = await ClientEncoder.encodeLibraTransaction(
        transaction, sender.getAddress());
    SignedTransaction signedTransaction = new SignedTransaction();
    SubmitTransactionRequest request = new SubmitTransactionRequest();

    Uint8List rawTxnBytes = rawTransaction.writeToBuffer();
    signedTransaction.rawTxnBytes = rawTxnBytes;
    signedTransaction.senderPublicKey = sender.keyPair.getPublicKey();
    signedTransaction.senderSignature = sender.keyPair.sign(rawTxnBytes);
    request.signedTxn = signedTransaction;
    SubmitTransactionResponse response =
        await _client.submitTransaction(request);

    LibraVMStatusError vmStatusError =
        ClientDecoder.decodeVMStatus(response.vmStatus);

    return new LibraTransactionResponse(signedTransaction, response.validatorId,
        acStatus: response.acStatus.code,
        mempoolStatus: response.mempoolStatus.code,
        vmStatus: vmStatusError);
  }

  Future<String> mintWithFaucetService(String address, BigInt numCoins,
      {needWait = true, maxIterations = 50}) async {
    String url =
        'http://${config.faucetServerHost}?amount=$numCoins&address=$address';
    String sequenceNumber = await compute(_faucet, {'url': url});
    if (needWait) {
      await waitForConfirmation(
          address, BigInt.parse(sequenceNumber), maxIterations);
    }
    return sequenceNumber;
  }

  static Future<String> _faucet(Map<String, dynamic> params) async {
    http.Client client = http.Client();
    Uri url = Uri.parse(params['url']);
    var response = await client.get(url);
    int statusCode = response.statusCode;
    String data = response.body.toString();
    if (statusCode != 200) {
      throw new StateError(
          'Failed to query faucet service. Code: $statusCode, Err: $data');
    }
    return data;
  }

  Future<void> waitForConfirmation(String accountAddress,
      BigInt transactionSequenceNumber, int maxIterations) async {
    Completer c = new Completer();
    Timer.periodic(new Duration(seconds: 1), (timer) async {
      if (timer.tick >= maxIterations) {
        timer.cancel();
        c.completeError(new StateError('timeout'));
      } else {
        var state = await getAccountState(accountAddress);
        if (state.sequenceNumber > transactionSequenceNumber.toInt()) {
          timer.cancel();
          c.complete();
        }
      }
    });
    return c.future;
  }

  Future<LibraSignedTransactionWithProof> getAccountTransaction(
      String address, BigInt sequenceNumber,
      {fetchEvents = true}) async {
    UpdateToLatestLedgerRequest request = new UpdateToLatestLedgerRequest();
    RequestItem requestItem = new RequestItem();
    GetAccountTransactionBySequenceNumberRequest getTransactionRequest =
        new GetAccountTransactionBySequenceNumberRequest();
    getTransactionRequest.account = LibraHelpers.hexToBytes(address);
    getTransactionRequest.sequenceNumber = Int64(sequenceNumber.toInt());
    getTransactionRequest.fetchEvents = fetchEvents;
    requestItem.getAccountTransactionBySequenceNumberRequest =
        getTransactionRequest;
    request.requestedItems.add(requestItem);

    UpdateToLatestLedgerResponse updateToLatestLedgerResponse =
        await _client.updateToLatestLedger(request);
    List<ResponseItem> responseItems =
        updateToLatestLedgerResponse.responseItems;
    if (responseItems.length == 0) {
      return null;
    }

    GetAccountTransactionBySequenceNumberResponse response =
        responseItems[0].getAccountTransactionBySequenceNumberResponse;
    SignedTransactionWithProof signedTransactionWP =
        response.signedTransactionWithProof;
    return ClientDecoder.decodeSignedTransactionWithProof(signedTransactionWP);
  }
}
