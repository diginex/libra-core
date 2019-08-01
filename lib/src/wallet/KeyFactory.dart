import 'dart:convert';
import 'dart:typed_data';
import 'package:bip39/bip39.dart' as bip39;
import 'package:pointycastle/api.dart';
import 'package:pointycastle/macs/hmac.dart';
import 'package:pointycastle/key_derivators/api.dart';
import 'package:pointycastle/key_derivators/pbkdf2.dart';
import 'package:flutter_libra_core/src/crypto/digests/sha3.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:flutter_libra_core/src/wallet/KeyPair.dart';
import 'package:flutter_libra_core/src/Constants.dart';

class KeyFactory {
  Digest _sha3256 = new SHA3Digest(256);
  Uint8List _masterPrk;
  Uint8List _masterSeedData;

  KeyFactory(String salt, {String mnemonic}) {
    if (mnemonic != null && mnemonic.isNotEmpty) {
      assert(bip39.validateMnemonic(mnemonic)); // Validate a mnemonic word list
    } else {
      mnemonic = bip39.generateMnemonic();
    }
    KeyDerivator derivator = new PBKDF2KeyDerivator(new HMac(_sha3256, 136));
    derivator.init(new Pbkdf2Parameters(
        utf8.encode('${KeyPrefixes.MnemonicSalt}$salt'),
        SeedValues.Iterations,
        SeedValues.KeySize));
    _masterSeedData = derivator.process(utf8.encode(mnemonic));
    _masterPrk = extract(_masterSeedData, KeyPrefixes.MasterKeySalt);
  }

  KeyPair generateKey(int childDepth) {
    int size = 8;
    Uint8List info = LibraHelpers.concat([
      utf8.encode(KeyPrefixes.DerivedKey),
      LibraHelpers.bigIntToFixLengthBytes(BigInt.from(childDepth), size)
    ]);
    Uint8List privateKey = expand(_masterPrk, info);
    return new KeyPair(privateKey);
  }

  Uint8List extract(Uint8List ikm, String salt) {
    return hmacSha3256(ikm, utf8.encode(salt));
  }

  Uint8List expand(Uint8List prk, Uint8List info, {len = 32}) {
    int hashLen = 32;
    int infoLen = info.length;
    int steps = (len / hashLen).ceil();
    Uint8List t = new Uint8List(hashLen * steps + infoLen + 1);
    for (int c = 1, start = 0, end = 0; c <= steps; ++c) {
      info.asMap().forEach((i, b) => t[end + i] = b);

      t[end + infoLen] = c;

      hmacSha3256(t.sublist(start, end + infoLen + 1), prk)
          .asMap()
          .forEach((i, b) => t[end + i] = b);

      start = end;
      end += hashLen;
    }
    return t.sublist(0, len);
  }

  Uint8List hmacSha3256(Uint8List seed, Uint8List passphraseByteArray) {
    HMac hmac = new HMac(_sha3256, 136);
    var rootSeed = new Uint8List(hmac.macSize);
    hmac.init(new KeyParameter(passphraseByteArray));
    hmac.update(seed, 0, seed.length);
    hmac.doFinal(rootSeed, 0);
    return rootSeed;
  }
}
