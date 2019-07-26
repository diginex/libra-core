/// Pure Dart implementation of Ed25519 - public-key signature system.
/// For more information, please follow https://ed25519.cr.yp.to.
/// In general, code mimics behaviour of original Python implementation
/// with some extensions from ActiveState Code Recipes
/// (Python 3 Ed25519 recipe - more at https://github.com/ActiveState/code).
/// Code is not tested for security requirements, so it is good idea to use it
/// on trusted local machines!

import 'dart:math' show Random, pow;
import 'dart:typed_data' show Uint8List;

import 'package:pointycastle/pointycastle.dart' show Digest;

String digestIdentifier = 'SHA-512';

void setDigestIdentifier(String id) {
  digestIdentifier = id;
}

// Magic constants
final baseX = BigInt.parse(
    "15112221349535400772501151409588531511454012693041857206046113283949847762202");
final baseY = BigInt.parse(
    "46316835694926478169428394003475163141307993866256225615783033603165251855960");
const int bits = 256;
final d = BigInt.parse(
    "37095705934669439343138083508754565189542113879843219016388785533085940283555");
final I = BigInt.parse(
    "19681161376707505956807079304988542015446066515923890162744021073123829784752");
final primeL = BigInt.parse(
    "7237005577332262213973186563042994240857116359379907606001950938285454250989");
final primeQ = BigInt.parse(
    "57896044618658097711785492504343953926634992332820282019728792003956564819949");

List<BigInt> basePoint = [baseX % primeQ, baseY % primeQ];

final ONE = BigInt.from(1);

/// Clamps the lower and upper bits as required by the specification.
/// Returns [bytes] with clamped bits.
/// Length of the [bytes] should be at least 32.
///
///     var l = new List<int>.generate(32, (int i) => i + i); // [0, ..., 60, 62]
///     bitClamp(new Uint8List.fromList(l)); // [0, ..., 60, 126]
Uint8List bitClamp(Uint8List bytes) {
  bytes[0] &= 248;
  bytes[31] &= 63;
  bytes[31] |= 64;
  return bytes;
}

/// Returns [Uint8List] created from [lst].
/// Shortcut to avoid constructor duplication.
///
///     var bytes = bytesFromList([1, 2, 3]); // [1, 2, 3]
///     print(bytes.runtimeType); // Uint8List
Uint8List bytesFromList(List<int> lst) => new Uint8List.fromList(lst);

/// Converts [bytes] into a BigInt from bytes in big-endian encoding.
/// [bytes] length should be at least 32.
///
///     var l = new List<int>.generate(32, (int i) => i + i); // [0, ..., 60, 62]
///     bytesToInteger(l); // 28149809252802682310...81719888435032634998129152
BigInt bytesToInteger(List<int> bytes) {
  //bytes = bytes.sublist(0, 32);
  var result = BigInt.zero;
  for (var i = 0; i < bytes.length; i++) {
    result += BigInt.from(bytes[i]) << (8 * i); // bytes.length - i - 1
  }
  return result;
}

/// Converts integer [intVal] into [x, y] point.
///
///     decodePoint(28149809252802682310); // [2063...9514, 28149809252802682310]
List<BigInt> decodePoint(BigInt intVal) {
  var y = intVal % (ONE << 255); //BigIntfrom(pow(2, (bits - 1))));
  //var y = intVal >> (bits - 1);
  var x = xRecover(y);
  if ((x & ONE) != ((intVal >> (bits - 1))) & ONE) {
    x = primeQ - x;
  }
  return [x, y];
}

/// Adds points on the Edwards curve.
/// Returns sum of points.
///
///     edwards([1,2], [1,2]); // [38630...2017, 20917...5802]
List<BigInt> edwards(List<BigInt> P, List<BigInt> Q) {
  BigInt x1, y1, x2, y2, x3, y3;
  x1 = P[0];
  y1 = P[1];
  x2 = Q[0];
  y2 = Q[1];
  x3 = (x1 * y2 + x2 * y1) * modularInverse(ONE + d * x1 * x2 * y1 * y2);
  y3 = (y1 * y2 + x1 * x2) * modularInverse(ONE - d * x1 * x2 * y1 * y2);
  return [x3 % primeQ, y3 % primeQ];
}

/// Encodes point [P] into [Uint8List].
///
///     encodePoint([1,2]); // [2, 0, ..., 0, 0, 128]
Uint8List encodePoint(List<BigInt> P) {
  var x = P[0];
  var y = P[1];
  var encoded = integerToBytes(y + ((x & ONE) << 255), 32);
  return encoded;
}

/// Returns digest message of SHA-512 hash function.
/// Digest message is result of hashing message [m].
///
///    Hash(new Uint8List(8)); // [27, 116, ..., 82, 196, 47, 27]
Uint8List Hash(Uint8List m) => new Digest(digestIdentifier).process(m);

/// Converts integer [e] into [Uint8List] with length [length].
///
///     integerToBytes(1, 32); // [0, 4, ... 0, 0, 0, 0, 0]

final _byteMask = new BigInt.from(0xff);

/// Encode a BigInt into bytes using big-endian encoding.
Uint8List integerToBytes(BigInt number, int length) {
  // Not handling negative numbers. Decide how you want to do that.
  // var size = (number.bitLength + 7) >> 3;
  var result = new Uint8List(length);
  for (var i = 0; i < length; i++) {
    result[i] = (number & _byteMask).toInt();
    number = number >> 8;
  }
  return result;
}

/// Returns [bool] that that indicates if point [P] is on curve.
///
///     isOnCurve([1, 2]); // false
/*bool isOnOldCurve(List<int> P) {
  int x, y;
  x = P[0];
  y = P[1];
  var onCurve = (-x * x + y * y - 1 - d * x * x * y * y) % primeQ == 0;
  return onCurve;
}*/

bool isOnCurve(List<BigInt> P) {
  BigInt x, y;
  x = P[0];
  y = P[1];
  var val = (-x * x + y * y - ONE - d * x * x * y * y) % primeQ;
  return val == BigInt.zero;
}

/// Returns the modular multiplicative inverse of integer [z]
/// and modulo [primeQ].
///
///     modularInverse(2); // 28948022...41009864396001978282409975
BigInt modularInverse(BigInt z) => z.modInverse(primeQ);

/// Generates public key from given secret key [sk].
/// Public key is [Uint8List] with size 32.
///
///     publicKey(new Uint8List.fromList([1,2,3])); // [11, 198, ..., 184, 7]
Uint8List publicKey(Uint8List sk) {
  var skHash = Hash(sk);
  var clamped = bytesToInteger(bitClamp(skHash));
  var encoded = encodePoint(scalarMult(basePoint, clamped));
  return encoded;
}

/// Returns result of scalar multiplication of point [P] by integer [e].
///
///     scalarMult([1,2], 10); // [298...422, 480...666]
List<BigInt> scalarMult(List<BigInt> P, BigInt e) {
  if (e == BigInt.zero) {
    return [BigInt.zero, ONE];
  }
  var Q = scalarMult(P, e ~/ BigInt.from(2));
  Q = edwards(Q, Q);
  if (e & ONE > BigInt.zero) {
    Q = edwards(Q, P);
  }
  return Q;
}

/// Generates random secret key.
/// Accepts optional argument [seed] to generate random values.
/// When no arguments passed, then [Random.secure] is used to generate values.
/// Secret key is [Uint8List] with length 64.
///
///     secretKey(); // [224, 185, ..., 10, 17, 137]
///     secretKey(1024) // [225, 122, ..., 102, 232, 111]
Uint8List secretKey([int seed]) {
  Random randGen;
  if (seed == null) {
    randGen = new Random.secure();
  } else {
    randGen = new Random(seed);
  }
  var randList = new List<int>.generate(1024, (_) => randGen.nextInt(bits));
  var clamped = bitClamp(Hash(bytesFromList(randList)));
  return clamped;
}

/// Creates signature for message [message] by using secret key [secretKey]
/// and public key [pubKey].
/// Signature is [Uint8List] with size 64.
///
///     var m = new Uint8List(32);
///     var sk = new Uint8List(32);
///     var pk = new Uint8List(32);
///     sign(m, sk, pk); // [62, 244, 231, ..., 53, 213, 0]
Uint8List sign(Uint8List message, Uint8List secretKey, Uint8List pubKey) {
  var secretHash = Hash(secretKey);
  var secretKeyAddMsg = new List<int>.from(secretHash.sublist(32, 64));
  secretKeyAddMsg.addAll(message);
  var msgSecretAsInt = bytesToInteger(Hash(bytesFromList(secretKeyAddMsg)));
  var scalar = encodePoint(scalarMult(basePoint, msgSecretAsInt));
  var preDigest = new List<int>.from(scalar);
  preDigest.addAll(pubKey);
  preDigest.addAll(message);
  var digest = bytesToInteger(Hash(bytesFromList(preDigest)));
  var signature = new List<int>.from(scalar);
  signature.addAll(integerToBytes(
      (msgSecretAsInt + digest * bytesToInteger(bitClamp(secretHash))) % primeL,
      32));
  return bytesFromList(signature);
}

/// Verifies given signature [signature] with message [message] and
/// public key [pubKey].
/// Returns [bool] that indicates if verification is successful.
///
///     var sig = new Uint8List(32);
///     var m = new Uint8List(32);
///     var pk = new Uint8List(32);
///     verifySignature(sig, m, pk); // false
bool verifySignature(Uint8List signature, Uint8List message, Uint8List pubKey) {
  if (signature.lengthInBytes != bits / 4) {
    return false;
  }
  if (pubKey.length != bits / 8) {
    return false;
  }
  var sigSublist = signature.sublist(0, 32);
  var preDigest = new List<int>.from(sigSublist);
  preDigest.addAll(pubKey);
  preDigest.addAll(message);
  var hashInt = bytesToInteger(Hash(bytesFromList(preDigest)));
  var signatureInt = bytesToInteger(signature.sublist(32, 64));
  var signatureScalar = scalarMult(basePoint, signatureInt);
  var pubKeyScalar = scalarMult(decodePoint(bytesToInteger(pubKey)), hashInt);
  var edwardsPubKeyScalar =
      edwards(decodePoint(bytesToInteger(sigSublist)), pubKeyScalar);
  var verified = (signatureScalar.length == edwardsPubKeyScalar.length &&
      signatureScalar[0] == edwardsPubKeyScalar[0] &&
      signatureScalar[1] == edwardsPubKeyScalar[1]);
  return verified;
}

/// Recovers coordinate `x` by given coordinate [y].
/// Returns recovered `x`.
///
///     xRecover(10); // 246881771...00105170855113893569705867530
BigInt xRecover(BigInt y) {
  var xx = (y * y - ONE) * modularInverse(d * y * y + ONE);

  var x = xx.modPow((primeQ + BigInt.from(3)) ~/ BigInt.from(8), primeQ);
  if ((x * x - xx) % primeQ != BigInt.zero) {
    x = (x * I) % primeQ;
  }

  if (x % BigInt.from(2) != BigInt.zero) {
    x = primeQ - x;
  }

  return x;
}