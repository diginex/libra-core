import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_libra_core/flutter_libra_core.dart';
import 'package:flutter_libra_core/src/wallet/Mnemonic.dart';
import 'package:hex/hex.dart';
import 'package:fixnum/fixnum.dart';

const String mnemonic =
    'danger gravity economy coconut flavor cart relax cactus analyst cradle pelican guitar balance there mail check where scrub topple shock connect valid follow flip';
const address1 =
    '6b68105b99cc381e9b4c8a9067fff4e204e1ce0384e2c0ce095321ed8a50e57b';
const address2 =
    'e7f884d74d8372becba990f374bb92a3edd19be9d8d1e50cac38c79d6f57d1c0';

class Bar implements CanonicalSerializable {
  int a;
  Uint8List b;
  Uint8List c;
  int d;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer
      .encodeUint64(a)
      .encodeBytes(b)
      .encodeBytes(c)
      .encodeUint32(d);
  }
}

class Foo implements CanonicalSerializable {
  int a;
  Uint8List b;
  Bar c;
  bool d;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer
      .encodeUint64(a)
      .encodeBytes(b)
      .encodeObject(c)
      .encodeBool(d);
  }
}

void main() {
  group('flutter_libra_core tests', () {
    
    test('get peer tnx constant', () {
        print(base64.encode(new Uint8List.fromList([76,73,66,82,65,86,77,10,1,0,7,1,74,0,0,0,4,0,0,0,3,78,0,0,0,6,0,0,0,13,84,0,0,0,6,0,0,0,14,90,0,0,0,6,0,0,0,5,96,0,0,0,41,0,0,0,4,137,0,0,0,32,0,0,0,8,169,0,0,0,15,0,0,0,0,0,0,1,0,2,0,1,3,0,2,0,2,4,2,0,3,2,4,2,3,0,6,60,83,69,76,70,62,12,76,105,98,114,97,65,99,99,111,117,110,116,4,109,97,105,110,15,112,97,121,95,102,114,111,109,95,115,101,110,100,101,114,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,2,0,4,0,12,0,12,1,19,1,1,2])));
    });

    test('can serialize should work', () {
    /*
      let bar = Bar {
        a: 100,
        b: vec![0, 1, 2, 3, 4, 5, 6, 7, 8],
        c: Addr::new([5u8; 32]),
        d: 99,
      };
      let mut map = BTreeMap::new();
      map.insert(vec![0, 56, 21], vec![22, 10, 5]);
      map.insert(vec![1], vec![22, 21, 67]);
      map.insert(vec![20, 21, 89, 105], vec![201, 23, 90]);
      let foo = Foo {
        a: u64::max_value(),
        b: vec![100, 99, 88, 77, 66, 55],
        c: bar,
        d: true,
        e: map,
      };
      */
      var bar = new Bar();
      bar.a = 100;
      bar.b = Uint8List.fromList([0, 1, 2, 3, 4, 5, 6, 7, 8]);
      bar.c = Uint8List.fromList(List.filled(32, 5));
      bar.d = 99;
      var foo = new Foo();
      foo.a = Int64.MAX_VALUE.toInt() * 2 + 1;
      foo.b = Uint8List.fromList([100, 99, 88, 77, 66, 55]);
      foo.c = bar;
      foo.d = true;

      var serializer = new SimpleSerializer();
      foo.serialize(serializer);
      expect(HEX.encode(serializer.getBytes()), 'ffffffffffffffff060000006463584d42376400000000000000090000000001020304050607082000000005050505050505050505050505050505050505050505050505050505050505056300000001');
    });

    test('Can turn a libra entropy into a mnemonic phrase and back', () {
      List<String> expectedWordsOrdered = mnemonic.split(' ');
      String entropy = Mnemonic.mnemonicListToEntropy(expectedWordsOrdered);
      var list = Mnemonic.entropyToMnemonic(entropy);
      expect(list.length, expectedWordsOrdered.length);
      for (int i = 0; i < list.length; i++) {
        expect(expectedWordsOrdered[i], list[i]);
      }
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

    test('Can get empty state of new account', () async {
      LibraClient client = new LibraClient();
      String address = new LibraWallet().newAccount().getAddress();
      LibraAccountState state = await client.getAccountState(address);
      expect(LibraHelpers.byteToHex(state.authenticationKey), address);
      expect(state.balance, BigInt.zero);
      expect(state.receivedEvents.count, BigInt.zero);
      expect(state.sentEvents.count, BigInt.zero);
      expect(state.sequenceNumber, BigInt.zero);
      expect(state.delegatedWithdrawalCapability, false);
      expect(state.delegatedKeyRotationCapability, false);
    });

    test('test faucet and transfer', () async {
      LibraClient client = new LibraClient();
      LibraWallet wallet = new LibraWallet();
      LibraAccount alice = wallet.newAccount();
      String aliceAddress = alice.getAddress();
      LibraAccount bob = wallet.newAccount();
      String bobAddress = bob.getAddress();
      print('send from alice: $aliceAddress to bob: $bobAddress');
      int amount = 1000000;
      await client.mintWithFaucetService(aliceAddress, BigInt.from(amount),
          needWait: false);
      LibraAccountState aliceState = await client.getAccountState(aliceAddress);
      print('alice state: ${aliceState.balance}, ${aliceState.sequenceNumber}');
      await client.transferCoins(alice, bobAddress, amount);
      LibraAccountState bobState = await client.getAccountState(bobAddress);
      print('bob state: ${bobState.balance}, ${bobState.sequenceNumber}');
      
      LibraSignedTransactionWithProof lastTransaction = await client
          .getAccountTransaction(aliceAddress, aliceState.sequenceNumber);
      expect(
          LibraHelpers.byteToHex(lastTransaction.signedTransaction.publicKey),
          LibraHelpers.byteToHex(alice.keyPair.getPublicKey()));
      expect(lastTransaction.signedTransaction.transaction.sequenceNumber,
          aliceState.sequenceNumber);
      
    });
    /*
    test('Can get raw transactions by startVersion', () async {
      LibraClient client = new LibraClient();
      int startVersion = 44441;
      List<LibraRawTransaction> libraRawTransactions =
          await client.getRawTransactionList(startVersion, limit: 1);
      LibraRawTransaction libraRawTransaction = libraRawTransactions[0];
      expect(libraRawTransaction.version.toInt(), startVersion);
    });
    */
  });
}
