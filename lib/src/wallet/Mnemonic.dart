import 'package:bip39/bip39.dart' as bip39;
import 'package:bip39/src/wordlists/english.dart' as bip39words;

class Mnemonic {
  /// Converts entropy to mnemonic word list
  static List<String> entropyToMnemonic(String entropy) {
    String words = bip39.entropyToMnemonic(entropy);
    return words.split(' ');
  }

  /// Convert mnemonic word list to entropy
  static String mnemonicListToEntropy(List<String> words) {
    if (words.length < 12 || words.length > 24 || words.length % 3 != 0) {
      throw Exception(
          'Mnemonic must have a word count of the following lengths: 24, 21, 18, 15, 12, got a ${words.length} list');
    }
    return bip39.mnemonicToEntropy(words.join(' ')).toUpperCase();
  }

  /// Validate a mnemonic
  static bool validateMnemonic(String mnemonic) {
    return bip39.validateMnemonic(mnemonic);
  }

  /// Validate a specific menmonic word
  static bool isValidWord(String word) {
    return bip39words.WORDLIST.contains(word);
  }

  /// Generate random menmonic
  static String generateMnemonic({int strength}) {
    strength = strength == null ? 256 : strength;
    return bip39.generateMnemonic(strength: strength);
  }
}
