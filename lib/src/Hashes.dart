import 'dart:convert';
import 'dart:typed_data' show Uint8List;
import 'package:pointycastle/api.dart';
import 'package:pointycastle/macs/hmac.dart';
import 'package:flutter_libra_core/src/encrypt/digests/sha3.dart';

class Hashes {
  static const int DIGEST_256 = 256 ~/ 8;

  static Uint8List digest256(List<Uint8List> bytes) {
    return digest(DIGEST_256, bytes);
  }

  static Uint8List digest(int digestSize, List<Uint8List> byteArrays) {
    String salt = "LIBRA WALLET: derived key\$";
    var passphraseByteArray = utf8.encode(salt);
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
