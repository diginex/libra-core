///
//  Generated code. Do not modify.
//  source: proto/validator_set.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'validator_public_keys.pb.dart' as $15;

class ValidatorSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ValidatorSet', package: const $pb.PackageName('types'))
    ..pc<$15.ValidatorPublicKeys>(1, 'validatorPublicKeys', $pb.PbFieldType.PM,$15.ValidatorPublicKeys.create)
    ..hasRequiredFields = false
  ;

  ValidatorSet._() : super();
  factory ValidatorSet() => create();
  factory ValidatorSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatorSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ValidatorSet clone() => ValidatorSet()..mergeFromMessage(this);
  ValidatorSet copyWith(void Function(ValidatorSet) updates) => super.copyWith((message) => updates(message as ValidatorSet));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidatorSet create() => ValidatorSet._();
  ValidatorSet createEmptyInstance() => create();
  static $pb.PbList<ValidatorSet> createRepeated() => $pb.PbList<ValidatorSet>();
  static ValidatorSet getDefault() => _defaultInstance ??= create()..freeze();
  static ValidatorSet _defaultInstance;

  $core.List<$15.ValidatorPublicKeys> get validatorPublicKeys => $_getList(0);
}

