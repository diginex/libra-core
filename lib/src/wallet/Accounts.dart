import 'dart:typed_data';
import 'package:flutter_libra_core/src/wallet/KeyPair.dart';

class LibraAccountState {
  Uint8List authenticationKey;
  BigInt balance, receivedEventsCount, sentEventsCount, sequenceNumber;
  bool delegatedWithdrawalCapability;

  LibraAccountState(this.authenticationKey,
      {BigInt balance,
      BigInt receivedEventsCount,
      BigInt sentEventsCount,
      BigInt sequenceNumber,
      this.delegatedWithdrawalCapability = true}) {
    this.balance = balance == null ? BigInt.zero : balance;
    this.receivedEventsCount =
        receivedEventsCount == null ? BigInt.zero : receivedEventsCount;
    this.sentEventsCount =
        sentEventsCount == null ? BigInt.zero : sentEventsCount;
    this.sequenceNumber = sequenceNumber == null ? BigInt.zero : sequenceNumber;
  }
}

class LibraAccount {
  KeyPair keyPair;
  String _address;

  LibraAccount(this.keyPair);

  static LibraAccount fromPrivateKey(Uint8List privateKey) {
    return new LibraAccount(new KeyPair(privateKey));
  }

  String getAddress() {
    if (_address != null && _address.isNotEmpty) {
      return _address;
    }
    _address = keyPair.getAddress();
    return _address;
  }
}
