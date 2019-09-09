import 'dart:typed_data';
import 'package:flutter_libra_core/src/wallet/KeyPair.dart';
import 'package:flutter_libra_core/src/wallet/Event.dart';

class LibraAccountState {
  Uint8List authenticationKey;
  BigInt balance, sequenceNumber;
  EventHandle receivedEvents, sentEvents;
  bool delegatedWithdrawalCapability;

  LibraAccountState(this.authenticationKey,
      {BigInt balance,
      EventHandle receivedEvents,
      EventHandle sentEvents,
      BigInt sequenceNumber,
      this.delegatedWithdrawalCapability = true}) {
    this.balance = balance == null ? BigInt.zero : balance;
    EventHandle defaultEventHandle = new EventHandle(Uint8List.fromList([]), BigInt.zero); 
    this.receivedEvents =
        receivedEvents == null ? defaultEventHandle : receivedEvents;
    this.sentEvents =
        sentEvents == null ? defaultEventHandle: sentEvents;
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
