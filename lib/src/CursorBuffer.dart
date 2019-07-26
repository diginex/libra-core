import 'dart:typed_data';

class CursorBuffer {
  ByteBuffer buffer;
  Endian endian;
  int bytePositon;

  CursorBuffer(this.buffer, {this.endian = Endian.little}) {
    bytePositon = 0;
  }

  int read8() {
    var value = buffer.asByteData(bytePositon, 1).getInt8(0);
    bytePositon += 1;
    return value;
  }

  int read32() {
    var value = buffer.asByteData(bytePositon, 4).getInt32(0, endian);
    bytePositon += 4;
    return value;
  }

  int read64() {
    var value = buffer.asByteData(bytePositon, 8).getInt64(0, endian);
    bytePositon += 8;
    return value;
  }

  Uint8List readXBytes(int x) {
    var value = buffer.asUint8List(bytePositon, x);
    bytePositon += x;
    return value;
  }

  void reset() {
    bytePositon = 0;
  }
}
