import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_libra_core/flutter_libra_core.dart';
import 'package:flutter_libra_core/__generated__/proto/admission_control.pbgrpc.dart';
import 'package:flutter_libra_core/__generated__/proto/admission_control.pb.dart';
import 'package:flutter_libra_core/src/wallet/Mnemonic.dart';

const String mnemonic =
    'danger gravity economy coconut flavor cart relax cactus analyst cradle pelican guitar balance there mail check where scrub topple shock connect valid follow flip';
const address1 =
    '6b68105b99cc381e9b4c8a9067fff4e204e1ce0384e2c0ce095321ed8a50e57b';
const address2 =
    'e7f884d74d8372becba990f374bb92a3edd19be9d8d1e50cac38c79d6f57d1c0';

void main() {
  group('flutter_libra_core tests', () {
    test('Can turn a libra entropy into a mnemonic phrase and back', () {
      List<String> expectedWordsOrdered =
          Mnemonic.generateMnemonic().split(' ');
      String entropy = Mnemonic.mnemonicListToEntropy(expectedWordsOrdered);
      var list = Mnemonic.entropyToMnemonic(entropy);
      print('entropy: $entropy, list: $list');
    });

    test('test keyFactory', () {
      LibraWallet wallet = new LibraWallet(mnemonic: mnemonic);
      LibraAccount account1 = wallet.generateAccount(2);
      LibraAccount account2 = wallet.generateAccount(3);

      const publicKey1 =
          '0b17160b25f035d313c4697b337b2109a744879f48262a1541d523799974f059';
      const privateKey1 =
          'eb2a230f74122191a4d42a1fd4ad926ba4063387e578f757dca6f23c0a9c57ee';

      const publicKey2 =
          'a4b9029686edd1131eb1290f5bfa9b370e6e258cdbddb7adde4c72fa4c8dcf4f';
      const privateKey2 =
          '000266cfa9eac7c5608e7a083806ed049e46c27159a5d1700ef78593fa78dbb4';

      // test seed to private key
      expect(LibraHelpers.byteToHex(account1.keyPair.getPrivateKey()),
          privateKey1);
      expect(LibraHelpers.byteToHex(account2.keyPair.getPrivateKey()),
          privateKey2);

      // test seed to public key
      expect(
          LibraHelpers.byteToHex(account1.keyPair.getPublicKey()), publicKey1);
      expect(
          LibraHelpers.byteToHex(account2.keyPair.getPublicKey()), publicKey2);

      // test public to address
      expect(account1.keyPair.getAddress(), address1);
      expect(account2.keyPair.getAddress(), address2);
    });

    test('test hex to byte array and back', () {
      Uint8List byteArray = LibraHelpers.hexToBytes(address1);
      expect(LibraHelpers.byteToHex(byteArray), address1);
    });

    test('test hex to binary and back', () {
      String binary = LibraHelpers.hexToBinary(address1);
      expect(LibraHelpers.binaryToHex(binary), address1);
    });

    test('test bigint to byte and back', () {
      BigInt raw = BigInt.parse('1000000000000000000000000000000');
      Uint8List byteRaw = LibraHelpers.bigIntToBytes(raw);
      expect(LibraHelpers.byteToBigInt(byteRaw), raw);
    });

    test('Can turn a utf-8 string into a byte array and back', () {
      Uint8List asBytes = LibraHelpers.stringToBytesUtf8(address1);
      expect(LibraHelpers.bytesToUtf8String(asBytes), address1);
    });

    test('Can concatenate byte arrays', () {
      expect(
          LibraHelpers.byteToHex(LibraHelpers.concat([
            LibraHelpers.hexToBytes(address1),
            LibraHelpers.hexToBytes(address2)
          ])),
          '$address1$address2');
    });

    test('test current state of account', () async {
      LibraClient client = new LibraClient();
      LibraAccountState state = await client.getAccountState(address2);
      print('balance: ${state.balance}');
    });

    test('test faucet and transfer', () async {
      LibraClient client = new LibraClient();
      LibraWallet wallet = new LibraWallet();
      LibraAccount sender = wallet.newAccount();
      LibraAccount recipient = wallet.newAccount();
      print('send from: ${sender.getAddress()} to ${recipient.getAddress()}');
      String address = sender.getAddress();
      int amount = 1000000;
      await client.mintWithFaucetService(address, BigInt.from(amount),
          needWait: false);
      LibraAccountState senderState = await client.getAccountState(address);
      expect(senderState.balance, amount);
      LibraTransactionResponse response =
          await client.transferCoins(sender, recipient.getAddress(), amount);
      expect(response.acStatus, AdmissionControlStatusCode.Accepted);
      LibraAccountState recipientState =
          await client.getAccountState(recipient.getAddress());
      expect(recipientState.balance, amount);
      LibraSignedTransactionWithProof lastTransaction =
          await client.getAccountTransaction(
              address, BigInt.from(senderState.sequenceNumber));
      expect(
          LibraHelpers.byteToHex(lastTransaction.signedTransaction.publicKey),
          LibraHelpers.byteToHex(sender.keyPair.getPublicKey()));
      expect(lastTransaction.signedTransaction.transaction.sequenceNumber,
          senderState.sequenceNumber);
    });
  });
}
