import 'dart:typed_data';

class EventHandle {
  Uint8List key;
  BigInt count;

  EventHandle(this.key, this.count);
}
