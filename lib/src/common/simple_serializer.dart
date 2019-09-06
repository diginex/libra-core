import 'dart:typed_data';

abstract class CanonicalSerializable {
  void serialize(SimpleSerializer serializer);
}

class SimpleSerializer {
  List<int> output;

  SimpleSerializer() {
    this.output = new List<int>();
  }

  Uint8List getBytes() {
    return Uint8List.fromList(this.output);
  }

  SimpleSerializer encodeBool(bool val) {
    this.output.addAll(Uint8List.fromList([val ? 1 : 0]));
    return this;
  }
  
  SimpleSerializer encodeUint8(int val) {
    this.output.addAll(Uint8List.fromList([val]));
    return this;
  }

  SimpleSerializer encodeUint16(int val) {
    var bdata = new ByteData(2);
    bdata.setUint16(0, val, Endian.little);
    this.output.addAll(bdata.buffer.asUint8List());
    return this;
  }

  SimpleSerializer encodeUint32(int val) {
    var bdata = new ByteData(4);
    bdata.setUint32(0, val, Endian.little);
    this.output.addAll(bdata.buffer.asUint8List());
    return this;
  }
  
  SimpleSerializer encodeUint64(int val) {
    var bdata = new ByteData(8);
    bdata.setUint64(0, val, Endian.little);
    this.output.addAll(bdata.buffer.asUint8List());
    return this;
  }

  SimpleSerializer encodeBytes(List<int> val) {
    var bdata = new ByteData(4);
    bdata.setUint32(0, val.length, Endian.little);
    this.output.addAll(bdata.buffer.asUint8List());
    this.output.addAll(val);
    return this;
  }

  SimpleSerializer encodeObject(CanonicalSerializable obj) {
    obj.serialize(this);
    return this;
  }
}