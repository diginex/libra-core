import 'dart:typed_data';
import 'package:flutter_libra_core/src/wallet/KeyPair.dart';

class LibraAccountState {
  Uint8List authenticationKey;
  int balance, receivedEventsCount, sentEventsCount, sequenceNumber;
  bool delegatedWithdrawalCapability;

  LibraAccountState(
      this.authenticationKey,
      {this.balance = 0,
      this.receivedEventsCount = 0,
      this.sentEventsCount = 0,
      this.sequenceNumber = 0,
      this.delegatedWithdrawalCapability = true});
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
