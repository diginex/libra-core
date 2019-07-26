///
//  Generated code. Do not modify.
//  source: proto/ledger_info.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class LedgerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LedgerInfo', package: const $pb.PackageName('types'))
    ..a<Int64>(1, 'version', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<$core.List<$core.int>>(2, 'transactionAccumulatorHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'consensusDataHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'consensusBlockId', $pb.PbFieldType.OY)
    ..a<Int64>(5, 'epochNum', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Int64>(6, 'timestampUsecs', $pb.PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  LedgerInfo._() : super();
  factory LedgerInfo() => create();
  factory LedgerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedgerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LedgerInfo clone() => LedgerInfo()..mergeFromMessage(this);
  LedgerInfo copyWith(void Function(LedgerInfo) updates) => super.copyWith((message) => updates(message as LedgerInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LedgerInfo create() => LedgerInfo._();
  LedgerInfo createEmptyInstance() => create();
  static $pb.PbList<LedgerInfo> createRepeated() => $pb.PbList<LedgerInfo>();
  static LedgerInfo getDefault() => _defaultInstance ??= create()..freeze();
  static LedgerInfo _defaultInstance;

  Int64 get version => $_getI64(0);
  set version(Int64 v) { $_setInt64(0, v); }
  $core.bool hasVersion() => $_has(0);
  void clearVersion() => clearField(1);

  $core.List<$core.int> get transactionAccumulatorHash => $_getN(1);
  set transactionAccumulatorHash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasTransactionAccumulatorHash() => $_has(1);
  void clearTransactionAccumulatorHash() => clearField(2);

  $core.List<$core.int> get consensusDataHash => $_getN(2);
  set consensusDataHash($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasConsensusDataHash() => $_has(2);
  void clearConsensusDataHash() => clearField(3);

  $core.List<$core.int> get consensusBlockId => $_getN(3);
  set consensusBlockId($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasConsensusBlockId() => $_has(3);
  void clearConsensusBlockId() => clearField(4);

  Int64 get epochNum => $_getI64(4);
  set epochNum(Int64 v) { $_setInt64(4, v); }
  $core.bool hasEpochNum() => $_has(4);
  void clearEpochNum() => clearField(5);

  Int64 get timestampUsecs => $_getI64(5);
  set timestampUsecs(Int64 v) { $_setInt64(5, v); }
  $core.bool hasTimestampUsecs() => $_has(5);
  void clearTimestampUsecs() => clearField(6);
}

class LedgerInfoWithSignatures extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LedgerInfoWithSignatures', package: const $pb.PackageName('types'))
    ..pc<ValidatorSignature>(1, 'signatures', $pb.PbFieldType.PM,ValidatorSignature.create)
    ..a<LedgerInfo>(2, 'ledgerInfo', $pb.PbFieldType.OM, LedgerInfo.getDefault, LedgerInfo.create)
    ..hasRequiredFields = false
  ;

  LedgerInfoWithSignatures._() : super();
  factory LedgerInfoWithSignatures() => create();
  factory LedgerInfoWithSignatures.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedgerInfoWithSignatures.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LedgerInfoWithSignatures clone() => LedgerInfoWithSignatures()..mergeFromMessage(this);
  LedgerInfoWithSignatures copyWith(void Function(LedgerInfoWithSignatures) updates) => super.copyWith((message) => updates(message as LedgerInfoWithSignatures));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LedgerInfoWithSignatures create() => LedgerInfoWithSignatures._();
  LedgerInfoWithSignatures createEmptyInstance() => create();
  static $pb.PbList<LedgerInfoWithSignatures> createRepeated() => $pb.PbList<LedgerInfoWithSignatures>();
  static LedgerInfoWithSignatures getDefault() => _defaultInstance ??= create()..freeze();
  static LedgerInfoWithSignatures _defaultInstance;

  $core.List<ValidatorSignature> get signatures => $_getList(0);

  LedgerInfo get ledgerInfo => $_getN(1);
  set ledgerInfo(LedgerInfo v) { setField(2, v); }
  $core.bool hasLedgerInfo() => $_has(1);
  void clearLedgerInfo() => clearField(2);
}

class ValidatorSignature extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ValidatorSignature', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'validatorId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ValidatorSignature._() : super();
  factory ValidatorSignature() => create();
  factory ValidatorSignature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatorSignature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ValidatorSignature clone() => ValidatorSignature()..mergeFromMessage(this);
  ValidatorSignature copyWith(void Function(ValidatorSignature) updates) => super.copyWith((message) => updates(message as ValidatorSignature));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidatorSignature create() => ValidatorSignature._();
  ValidatorSignature createEmptyInstance() => create();
  static $pb.PbList<ValidatorSignature> createRepeated() => $pb.PbList<ValidatorSignature>();
  static ValidatorSignature getDefault() => _defaultInstance ??= create()..freeze();
  static ValidatorSignature _defaultInstance;

  $core.List<$core.int> get validatorId => $_getN(0);
  set validatorId($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasValidatorId() => $_has(0);
  void clearValidatorId() => clearField(1);

  $core.List<$core.int> get signature => $_getN(1);
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasSignature() => $_has(1);
  void clearSignature() => clearField(2);
}

