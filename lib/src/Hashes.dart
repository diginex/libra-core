import 'dart:convert';
import 'dart:typed_data' show Uint8List;
import 'package:pointycastle_base/api.dart';
import 'package:pointycastle_base/macs/hmac.dart';
import 'package:pointycastle_base/digests/sha3.dart';
import 'package:flutter_libra_core/src/Constants.dart';

class Hashes {
  static const int DIGEST_256 = 256 ~/ 8;

  static Uint8List digest256(List<Uint8List> bytes) {
    return digest(DIGEST_256, bytes);
  }

  static Uint8List digest(int digestSize, List<Uint8List> byteArrays) {
    var passphraseByteArray = utf8.encode(KeyPrefixes.DerivedKey);
    Digest sha3256 = new SHA3Digest(256);
    var hmac = new HMac(sha3256, 136);
    var output = new Uint8List(hmac.macSize);
    hmac.init(new KeyParameter(passphraseByteArray));
    byteArrays
        .forEach((byteArray) => hmac.update(byteArray, 0, byteArray.length));
    hmac.doFinal(output, 0);
    return output;
  }
}
