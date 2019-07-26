///
//  Generated code. Do not modify.
//  source: proto/validator_public_keys.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class ValidatorPublicKeys extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ValidatorPublicKeys', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'accountAddress', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'consensusPublicKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'networkSigningPublicKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'networkIdentityPublicKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ValidatorPublicKeys._() : super();
  factory ValidatorPublicKeys() => create();
  factory ValidatorPublicKeys.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatorPublicKeys.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ValidatorPublicKeys clone() => ValidatorPublicKeys()..mergeFromMessage(this);
  ValidatorPublicKeys copyWith(void Function(ValidatorPublicKeys) updates) => super.copyWith((message) => updates(message as ValidatorPublicKeys));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidatorPublicKeys create() => ValidatorPublicKeys._();
  ValidatorPublicKeys createEmptyInstance() => create();
  static $pb.PbList<ValidatorPublicKeys> createRepeated() => $pb.PbList<ValidatorPublicKeys>();
  static ValidatorPublicKeys getDefault() => _defaultInstance ??= create()..freeze();
  static ValidatorPublicKeys _defaultInstance;

  $core.List<$core.int> get accountAddress => $_getN(0);
  set accountAddress($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasAccountAddress() => $_has(0);
  void clearAccountAddress() => clearField(1);

  $core.List<$core.int> get consensusPublicKey => $_getN(1);
  set consensusPublicKey($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasConsensusPublicKey() => $_has(1);
  void clearConsensusPublicKey() => clearField(2);

  $core.List<$core.int> get networkSigningPublicKey => $_getN(2);
  set networkSigningPublicKey($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasNetworkSigningPublicKey() => $_has(2);
  void clearNetworkSigningPublicKey() => clearField(3);

  $core.List<$core.int> get networkIdentityPublicKey => $_getN(3);
  set networkIdentityPublicKey($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasNetworkIdentityPublicKey() => $_has(3);
  void clearNetworkIdentityPublicKey() => clearField(4);
}

