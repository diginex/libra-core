import 'dart:typed_data';

abstract class CanonicalDeserializable {
  void deserialize(SimpleDeserializer deserializer);
}

class SimpleDeserializer {
  ByteData input;
  int offset = 0;

  SimpleDeserializer(Uint8List bytes) {
    this.input = ByteData.view(bytes.buffer);
  }

  bool decodeBool() {
    var result = this.input.getUint8(offset) != 0;
    this.offset += 1;
    return result;
  }

  int decodeUint8() {
    var result =  this.input.getUint8(offset);
    this.offset += 1;
    return result;
  }

  int decodeUint16() {
    var result =  this.input.getUint16(offset, Endian.little);
    this.offset += 2;
    return result;
  }

  int decodeUint32() {
    var result =  this.input.getUint32(offset, Endian.little);
    this.offset += 4;
    return result;
  }

  int decodeUint64() {
    var result =  this.input.getUint64(offset, Endian.little);
    this.offset += 8;
    return result;
  }

  Uint8List decodeBytes() {
    var length = this.decodeUint32();
    var result = this.input.buffer.asUint8List(this.offset, length);
    this.offset += length;
    return result;
  }

  T decodeObject<T extends CanonicalDeserializable>(T obj) {
    obj.deserialize(this);
    return obj;
  }
}