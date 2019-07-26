import 'dart:typed_data';
import 'package:pointycastle/api.dart';
import 'package:flutter_libra_core/src/encrypt/digests/sha3.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:flutter_libra_core/src/LibraAccountEncodes.dart';

class AccountState {
  Uint8List authenticationKey;
  int balance, receivedEventsCount, sentEventsCount, sequenceNumber;

  AccountState(Uint8List address, int balance, int receivedEventsCount,
      int sentEventsCount, int sequenceNumber) {
    this.authenticationKey = address;
    this.balance = balance;
    this.receivedEventsCount = receivedEventsCount;
    this.sentEventsCount = sentEventsCount;
    this.sequenceNumber = sequenceNumber;
  }
}

class Accounts {
  static LibraAccountEncodes encoder = LibraAccountEncodes();

  static String createAccount(String publicKey) {
    Digest sha3256 = new SHA3Digest(256);
    return LibraHelpers.byteToHex(
        sha3256.process(LibraHelpers.hexToBytes(publicKey)));
  }

  static String extractEncodedPublicKey(String account) {
    return account.substring(4, 56);
  }

  static String extractPublicKey(String account) {
    assert(account != null);
    String encodedPublicKey = extractEncodedPublicKey(account);
    String binaryPublicKey = encoder.decode(encodedPublicKey).substring(4);
    String hexPublicKey =
        LibraHelpers.binaryToHex(binaryPublicKey).padLeft(64, '0');
    return hexPublicKey;
  }
}
