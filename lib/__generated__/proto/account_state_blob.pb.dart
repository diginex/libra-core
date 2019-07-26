///
//  Generated code. Do not modify.
//  source: proto/account_state_blob.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'proof.pb.dart' as $4;

class AccountStateBlob extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountStateBlob', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'blob', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AccountStateBlob._() : super();
  factory AccountStateBlob() => create();
  factory AccountStateBlob.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountStateBlob.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountStateBlob clone() => AccountStateBlob()..mergeFromMessage(this);
  AccountStateBlob copyWith(void Function(AccountStateBlob) updates) => super.copyWith((message) => updates(message as AccountStateBlob));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountStateBlob create() => AccountStateBlob._();
  AccountStateBlob createEmptyInstance() => create();
  static $pb.PbList<AccountStateBlob> createRepeated() => $pb.PbList<AccountStateBlob>();
  static AccountStateBlob getDefault() => _defaultInstance ??= create()..freeze();
  static AccountStateBlob _defaultInstance;

  $core.List<$core.int> get blob => $_getN(0);
  set blob($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasBlob() => $_has(0);
  void clearBlob() => clearField(1);
}

class AccountStateWithProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountStateWithProof', package: const $pb.PackageName('types'))
    ..a<Int64>(1, 'version', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<AccountStateBlob>(2, 'blob', $pb.PbFieldType.OM, AccountStateBlob.getDefault, AccountStateBlob.create)
    ..a<$4.AccountStateProof>(3, 'proof', $pb.PbFieldType.OM, $4.AccountStateProof.getDefault, $4.AccountStateProof.create)
    ..hasRequiredFields = false
  ;

  AccountStateWithProof._() : super();
  factory AccountStateWithProof() => create();
  factory AccountStateWithProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountStateWithProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountStateWithProof clone() => AccountStateWithProof()..mergeFromMessage(this);
  AccountStateWithProof copyWith(void Function(AccountStateWithProof) updates) => super.copyWith((message) => updates(message as AccountStateWithProof));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountStateWithProof create() => AccountStateWithProof._();
  AccountStateWithProof createEmptyInstance() => create();
  static $pb.PbList<AccountStateWithProof> createRepeated() => $pb.PbList<AccountStateWithProof>();
  static AccountStateWithProof getDefault() => _defaultInstance ??= create()..freeze();
  static AccountStateWithProof _defaultInstance;

  Int64 get version => $_getI64(0);
  set version(Int64 v) { $_setInt64(0, v); }
  $core.bool hasVersion() => $_has(0);
  void clearVersion() => clearField(1);

  AccountStateBlob get blob => $_getN(1);
  set blob(AccountStateBlob v) { setField(2, v); }
  $core.bool hasBlob() => $_has(1);
  void clearBlob() => clearField(2);

  $4.AccountStateProof get proof => $_getN(2);
  set proof($4.AccountStateProof v) { setField(3, v); }
  $core.bool hasProof() => $_has(2);
  void clearProof() => clearField(3);
}

