import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/api.dart';
import 'package:pointycastle/macs/hmac.dart';
import 'package:flutter_libra_core/src/encrypt/digests/sha3.dart';

class LibraHdkey {
  static Uint8List extract(Uint8List ikm, String salt) {
    return hmacSha3256(ikm, utf8.encode(salt));
  }

  static Uint8List expand(Uint8List prk, int len, Uint8List info) {
    int hash_len = 32;
    int info_len = info.length;
    int steps = (len / hash_len).ceil();
    Uint8List t = new Uint8List(hash_len * steps + info_len + 1);
    for (int c = 1, start = 0, end = 0; c <= steps; ++c) {
      info.asMap().forEach((i, b) => t[end + i] = b);

      t[end + info_len] = c;

      hmacSha3256(t.sublist(start, end + info_len + 1), prk)
          .asMap()
          .forEach((i, b) => t[end + i] = b);

      start = end;
      end += hash_len;
    }
    return t.sublist(0, len);
  }

  static Uint8List hmacSha3256(Uint8List seed, Uint8List passphraseByteArray) {
    Digest sha3256 = new SHA3Digest(256);
    var hmac = new HMac(sha3256, 136);
    var rootSeed = new Uint8List(hmac.macSize);
    hmac.init(new KeyParameter(passphraseByteArray));
    hmac.update(seed, 0, seed.length);
    hmac.doFinal(rootSeed, 0);
    return rootSeed;
  }

  static int getHashLength() {
    Digest sha3256 = new SHA3Digest(256);
    return sha3256.process(utf8.encode('')).length;
  }
}
