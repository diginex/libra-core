import 'dart:typed_data';
import 'package:ed25519_dart_base/ed25519_dart.dart' as ed25519_dart;
import 'package:pointycastle_base/api.dart';
import 'package:pointycastle_base/digests/sha3.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:flutter_libra_core/src/Constants.dart';

class KeyPair {
  Uint8List _privateKey;
  Digest _sha3256 = new SHA3Digest(256);

  KeyPair(this._privateKey);

  String getAddress() {
    Uint8List publicKey = ed25519_dart.publicKey(_privateKey);
    return LibraHelpers.byteToHex(_sha3256.process(publicKey));
  }

  Uint8List getPublicKey() {
    return ed25519_dart.publicKey(_privateKey);
  }

  Uint8List getPrivateKey() {
    return _privateKey;
  }

  Uint8List sign(Uint8List rawData) {
    Uint8List salt =
        LibraHelpers.hexToBytes(HashSaltValues.RawTransactionHashSalt);
    Uint8List msg = _sha3256.process(LibraHelpers.concat([salt, rawData]));
    return ed25519_dart.sign(
        msg, _privateKey, ed25519_dart.publicKey(_privateKey));
  }
}
