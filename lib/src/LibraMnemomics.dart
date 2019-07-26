import 'package:bip39/bip39.dart' as bip39;
import 'package:bip39/src/wordlists/english.dart' as bip39words;
import 'dart:convert';
import 'package:pointycastle/api.dart';
import "package:pointycastle/key_derivators/api.dart";
import "package:pointycastle/key_derivators/pbkdf2.dart";
import 'package:pointycastle/macs/hmac.dart';
import 'package:flutter_libra_core/src/LibraSeeds.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:flutter_libra_core/src/encrypt/digests/sha3.dart';

class LibraMnemomics {
  static final int SEED_ITERATIONS = 2048;
  static final int SEED_KEY_SIZE = 32;

  /// Converts a libra seed to a 24-word mnemonic word list
  static List<String> seedToMnemonic(String seed) {
    if (!LibraSeeds.isValidSeed(seed)) {
      throw Exception('Invalid Seed');
    }
    String words = bip39.entropyToMnemonic(seed);
    return words.split(' ');
  }

  /// Convert a 24-word mnemonic word list to a libra seed
  static String generateMasterSeed(List<String> words) {
    String mnemonic = words.join(' ');
    validateMnemonic(words);

    String salt = "LIBRA WALLET: mnemonic salt prefix\$LIBRA";
    Digest sha3256 = new SHA3Digest(256);
    KeyDerivator derivator = new PBKDF2KeyDerivator(new HMac(sha3256, 136));

    derivator.init(new Pbkdf2Parameters(
        utf8.encode(salt), SEED_ITERATIONS, SEED_KEY_SIZE));

    var masterSeedByteArray = derivator.process(utf8.encode(mnemonic));
    return LibraHelpers.byteToHex(masterSeedByteArray);
  }

  /// Validate a mnemonic word list
  static bool validateMnemonic(List<String> words) {
    return bip39.validateMnemonic(words.join(' '));
  }

  /// Validate a specific menmonic word
  static bool isValidWord(String word) {
    return bip39words.WORDLIST.contains(word);
  }
}
