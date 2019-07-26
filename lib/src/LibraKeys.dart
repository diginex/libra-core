import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:ed25519_hd_key/ed25519_hd_key.dart';

class LibraKeys {
  static String createPublicKey(String privateKey) {
    return LibraHelpers.byteToHex(ED25519_HD_KEY.getBublickKey(LibraHelpers.hexToBytes(privateKey), false));
  }
}
