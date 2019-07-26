import 'dart:typed_data';
import 'dart:convert';
import 'package:hex/hex.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_libra_core/flutter_libra_core.dart';
import 'package:flutter_libra_core/__generated__/proto/get_with_proof.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/transaction.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/admission_control.pb.dart';
import 'package:pointycastle/api.dart';
import 'package:flutter_libra_core/src/encrypt/digests/sha3.dart';
import 'package:flutter_libra_core/src/ed25519_dart_base.dart' as ed25519;

void main() {
  group('flutter_libra_core tests', () {
    test('Can turn a libra seed into a mnemonic phrase and back', () {
      List<String> expectedWordsOrdered = [
        'danger',
        'gravity',
        'economy',
        'coconut',
        'flavor',
        'cart',
        'relax',
        'cactus',
        'analyst',
        'cradle',
        'pelican',
        'guitar',
        'balance',
        'there',
        'mail',
        'check',
        'where',
        'scrub',
        'topple',
        'shock',
        'connect',
        'valid',
        'follow',
        'flip'
      ];
      String rootSeed = LibraMnemomics.generateMasterSeed(expectedWordsOrdered);
      String masterKeySalt = "LIBRA WALLET: master key salt\$";
      expect(
          LibraHelpers.byteToHex(LibraHdkey.extract(
              LibraHelpers.hexToBytes(rootSeed), masterKeySalt)),
          'EF039FF2877798FD6010ED7BD08C413E98A298855D32BDD846EF69CCAB4AE321');
    });

    test('test seed to private key', () {
      Uint8List masterPrk = LibraHelpers.hexToBytes(
          'EF039FF2877798FD6010ED7BD08C413E98A298855D32BDD846EF69CCAB4AE321');
      String derivedKey = "LIBRA WALLET: derived key\$";
      var dkeyBuffer = utf8.encode(derivedKey);
      int size = 8;
      expect(
          LibraHelpers.byteToHex(LibraHdkey.expand(
              masterPrk,
              32,
              LibraHelpers.concat([
                dkeyBuffer,
                LibraHelpers.bigIntToFixLengthBytes(BigInt.from(2), size)
              ]))),
          'EB2A230F74122191A4D42A1FD4AD926BA4063387E578F757DCA6F23C0A9C57EE');

      expect(
          LibraHelpers.byteToHex(LibraHdkey.expand(
              masterPrk,
              32,
              LibraHelpers.concat([
                dkeyBuffer,
                LibraHelpers.bigIntToFixLengthBytes(BigInt.from(3), size)
              ]))),
          '000266CFA9EAC7C5608E7A083806ED049E46C27159A5D1700EF78593FA78DBB4');
    });

    test('test private key to public key', () {
      expect(
          LibraKeys.createPublicKey(
              'EB2A230F74122191A4D42A1FD4AD926BA4063387E578F757DCA6F23C0A9C57EE'),
          '0B17160B25F035D313C4697B337B2109A744879F48262A1541D523799974F059');
      expect(
          LibraKeys.createPublicKey(
              '000266CFA9EAC7C5608E7A083806ED049E46C27159A5D1700EF78593FA78DBB4'),
          'A4B9029686EDD1131EB1290F5BFA9B370E6E258CDBDDB7ADDE4C72FA4C8DCF4F');
    });

    test('test address from private key', () {
      expect(
          Accounts.createAccount(
              '0B17160B25F035D313C4697B337B2109A744879F48262A1541D523799974F059'),
          '6B68105B99CC381E9B4C8A9067FFF4E204E1CE0384E2C0CE095321ED8A50E57B');
      expect(
          Accounts.createAccount(
              'A4B9029686EDD1131EB1290F5BFA9B370E6E258CDBDDB7ADDE4C72FA4C8DCF4F'),
          'E7F884D74D8372BECBA990F374BB92A3EDD19BE9D8D1E50CAC38C79D6F57D1C0');
    });

    test('test hex to byte array and back', () {
      String hex =
          '4A93F2F2BBE636EB0F3A5E6F4098783A2E06B8F614F6B85E3B4290D17081CD84';
      Uint8List byteArray = LibraHelpers.hexToBytes(hex);
      expect(LibraHelpers.byteToHex(byteArray), hex);
    });

    test('test hex to binary and back', () {
      String hex =
          '4A93F2F2BBE636EB0F3A5E6F4098783A2E06B8F614F6B85E3B4290D17081CD84';
      String binary = LibraHelpers.hexToBinary(hex);
      expect(LibraHelpers.binaryToHex(binary), hex);
    });

    test('test bigint to byte and back', () {
      BigInt raw = BigInt.parse('1000000000000000000000000000000');
      Uint8List byteRaw = LibraHelpers.bigIntToBytes(raw);
      expect(LibraHelpers.byteToBigInt(byteRaw), raw);
    });

    test('Can turn a utf-8 string into a byte array and back', () {
      String originalStr = 'originalStr';
      Uint8List asBytes = LibraHelpers.stringToBytesUtf8(originalStr);
      expect(LibraHelpers.bytesToUtf8String(asBytes), originalStr);
    });

    test('Can concatenate byte arrays', () {
      Uint8List hex1 = LibraHelpers.hexToBytes('AB12');
      Uint8List hex2 = LibraHelpers.hexToBytes('CD34');
      expect(LibraHelpers.byteToHex(LibraHelpers.concat([hex1, hex2])),
          'AB12CD34');
    });

    test('test current state of account', () async {
      String address =
          'E7F884D74D8372BECBA990F374BB92A3EDD19BE9D8D1E50CAC38C79D6F57D1C0';
      var getAccountStateRequest = new GetAccountStateRequest();
      getAccountStateRequest.address = LibraHelpers.hexToBytes(address);
      var requestItem = new RequestItem();
      requestItem.getAccountStateRequest = getAccountStateRequest;
      var request = new UpdateToLatestLedgerRequest();
      request.requestedItems.add(requestItem);
      var data = await new LibraClient().client.updateToLatestLedger(request);
      data.responseItems.forEach((response) {
        var stateResponse = response.getAccountStateResponse;
        var stateWithProof = stateResponse.accountStateWithProof;
        if (stateWithProof.hasBlob()) {
          var stateBlob = stateWithProof.blob;
          var blobBytes = stateBlob.blob;
          ByteBuffer buffer = Int8List.fromList(blobBytes).buffer;
          var states = ClientDecoder.decodeAccountStateBlob(buffer);
          states.forEach((state) {
            print('balance: ${state.balance}');
          });
        }
      });
    });

    test('test transfer', () async {
      var client = new LibraClient().client;
      String senderAddress =
          '6B68105B99CC381E9B4C8A9067FFF4E204E1CE0384E2C0CE095321ED8A50E57B';
      String recipientAddress =
          'E7F884D74D8372BECBA990F374BB92A3EDD19BE9D8D1E50CAC38C79D6F57D1C0';
      var amountToTransfer = BigInt.from(1000000);

      var amountBuffer =
          LibraHelpers.bigIntToFixLengthBytes(amountToTransfer, 8);
      print('amountBuffer: ${LibraHelpers.byteToHex(amountBuffer)}');
      List<LibraProgramArgument> programArguments = [
        new LibraProgramArgument(TransactionArgument_ArgType.ADDRESS, HEX.decode(recipientAddress)),
        new LibraProgramArgument(TransactionArgument_ArgType.U64, LibraHelpers.hexToBytes('40420f0000000000')),
      ];

      String peerToPeerTxn =
          'TElCUkFWTQoBAAcBSgAAAAQAAAADTgAAAAYAAAAMVAAAAAYAAAANWgAAAAYAAAAFYAAAACkAAAAEiQAAACAAAAAHqQAAAA4AAAAAAAABAAIAAQMAAgACBAIAAwADAgQCBjxTRUxGPgxMaWJyYUFjY291bnQEbWFpbg9wYXlfZnJvbV9zZW5kZXIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAgEEAAwADAERAQAC';
      Uint8List code = base64.decode(peerToPeerTxn);
      LibraProgram libraProgram = new LibraProgram(code, programArguments, []);
      LibraGasConstraint gas =
          new LibraGasConstraint(BigInt.zero, BigInt.from(1000000));
      var expirationTime =
          (new DateTime.now().millisecondsSinceEpoch ~/ 1000).floor() + 100;
      int addressLength = 32;
      LibraTransaction transaction = new LibraTransaction(
        libraProgram,
        gas,
        expirationTime,
        new Uint8List(addressLength),
        0,
      );

      var program = new Program();
      program.code = transaction.program.code;
      List<TransactionArgument> transactionArguments = [];
      transaction.program.arguments.forEach((argument) {
        TransactionArgument transactionArgument = new TransactionArgument();
        transactionArgument.type = argument.type;
        transactionArgument.data = argument.value;
        transactionArguments.add(transactionArgument);
      });
      program.arguments.addAll(transactionArguments);
      program.modules.addAll(transaction.program.modules);

      var rawTransaction = new RawTransaction();
      rawTransaction.expirationTime = Int64(transaction.expirationTime);
      rawTransaction.gasUnitPrice =
          Int64(transaction.gasContraint.gasUnitPrice.toInt());
      rawTransaction.maxGasAmount =
          Int64(transaction.gasContraint.maxGasAmount.toInt());
      rawTransaction.sequenceNumber = Int64(transaction.sequenceNumber);
      rawTransaction.program = program;
      rawTransaction.senderAccount = HEX.decode(senderAddress);
      var rawTxnBytes = rawTransaction.writeToBuffer();
      Digest sha3256 = new SHA3Digest(256);
      String rawTransactionHashSalt =
          '46f174df6ca8de5ad29745f91584bb913e7df8dd162e3e921a5c1d8637c88d16';
      Uint8List salt = LibraHelpers.hexToBytes(rawTransactionHashSalt);
      Uint8List data = LibraHelpers.concat([salt, rawTxnBytes]);
      Uint8List hash = sha3256.process(data);
      var privateKey = LibraHelpers.hexToBytes(
          'EB2A230F74122191A4D42A1FD4AD926BA4063387E578F757DCA6F23C0A9C57EE');
      var publicKey = LibraHelpers.hexToBytes(
          '4a93f2f2bbe636eb0f3a5e6f4098783a2e06b8f614f6b85e3b4290d17081cd84');
      var signedTransaction = new SignedTransaction();
      signedTransaction.rawTxnBytes = rawTxnBytes;
      signedTransaction.senderPublicKey = publicKey;
      var sig = ed25519.sign(hash, privateKey, publicKey);
      signedTransaction.senderSignature = sig;
      var request = new SubmitTransactionRequest();
      request.signedTxn = signedTransaction;
      var response = await client.submitTransaction(request);
      print('response.acStatus.code: ${response.acStatus.code}');
      expect(response.acStatus.code, AdmissionControlStatusCode.Accepted);
    });
  });
}
