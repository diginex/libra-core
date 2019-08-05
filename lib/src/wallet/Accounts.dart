import 'dart:typed_data';
import 'package:flutter_libra_core/src/wallet/KeyPair.dart';

class LibraAccountState {
  Uint8List authenticationKey;
  int balance, receivedEventsCount, sentEventsCount, sequenceNumber;
  bool delegatedWithdrawalCapability;

  LibraAccountState(
      this.authenticationKey,
      this.balance,
      this.receivedEventsCount,
      this.sentEventsCount,
      this.sequenceNumber,
      this.delegatedWithdrawalCapability);
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
