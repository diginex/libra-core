import 'dart:typed_data';
import 'package:flutter_libra_core/src/CursorBuffer.dart';
import 'package:flutter_libra_core/src/Accounts.dart';

class ClientDecoder {
  static List<AccountState> decodeAccountStateBlob(ByteBuffer buffer) {
    CursorBuffer cursor = new CursorBuffer(buffer);
    int dataSize = cursor.read32();
    List<AccountState> states = [];
    for (int i = 0; i < dataSize; i++) {
      int keyLen = cursor.read32();
      Uint8List key = cursor.readXBytes(keyLen);
      int valLen = cursor.read32();
      int addressLen = cursor.read32();
      Uint8List address = cursor.readXBytes(addressLen);
      int balance = cursor.read64();
      int receivedEvents = cursor.read64();
      int sentEvents = cursor.read64();
      int sequenceNumber = cursor.read64();
      states.add(AccountState(
          address, balance, receivedEvents, sentEvents, sequenceNumber));
    }
    return states;
  }
}
