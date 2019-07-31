import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:ed25519_dart/src/ed25519_dart_base.dart';

class LibraKeys {
  static String createPublicKey(String privateKey) {
    return LibraHelpers.byteToHex(
        publicKey(LibraHelpers.hexToBytes(privateKey)));
  }
}
