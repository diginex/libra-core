import 'dart:math';
import 'package:hex/hex.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';

class Entropy {
  /// Returns true if a entropy is valid, false otherwise
  static bool isValidEntropy(String entropyString) {
    final entropy = HEX.decode(entropyString);
    if (entropy.length < 16 || entropy.length > 32 || entropy.length % 4 != 0) {
      return false;
    }
    // Ensure entropy only contains hex characters, 0-9;A-F
    return LibraHelpers.isHexString(entropyString);
  }

  static String generateEntropy() {
    String result = ''; // Resulting entropy when done
    String chars = 'abcdef0123456789'; // Characters a entropy may contain
    Random rng = Random.secure();
    for (int i = 0; i < 64; i++) {
      result += chars[rng.nextInt(chars.length)];
    }
    return result.toUpperCase();
  }
}
