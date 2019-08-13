import 'dart:math';
import 'package:flutter_libra_core/src/LibraHelpers.dart';

final int entropyLength = 64;

class Entropy {
  /// Returns true if a entropy is valid, false otherwise
  static bool isValidEntropy(String entropyString) {
    if (entropyString == null || entropyString.length != entropyLength) {
      return false;
    }
    // Ensure entropy only contains hex characters, 0-9;A-F
    return LibraHelpers.isHexString(entropyString);
  }

  static String generateEntropy() {
    String result = ''; // Resulting entropy when done
    String chars = 'abcdef0123456789'; // Characters a entropy may contain
    Random rng = Random.secure();
    for (int i = 0; i < entropyLength; i++) {
      result += chars[rng.nextInt(chars.length)];
    }
    return result.toUpperCase();
  }
}
