///
//  Generated code. Do not modify.
//  source: proto/transaction_info.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class TransactionInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionInfo', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'signedTransactionHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'stateRootHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'eventRootHash', $pb.PbFieldType.OY)
    ..a<Int64>(4, 'gasUsed', $pb.PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  TransactionInfo._() : super();
  factory TransactionInfo() => create();
  factory TransactionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransactionInfo clone() => TransactionInfo()..mergeFromMessage(this);
  TransactionInfo copyWith(void Function(TransactionInfo) updates) => super.copyWith((message) => updates(message as TransactionInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionInfo create() => TransactionInfo._();
  TransactionInfo createEmptyInstance() => create();
  static $pb.PbList<TransactionInfo> createRepeated() => $pb.PbList<TransactionInfo>();
  static TransactionInfo getDefault() => _defaultInstance ??= create()..freeze();
  static TransactionInfo _defaultInstance;

  $core.List<$core.int> get signedTransactionHash => $_getN(0);
  set signedTransactionHash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSignedTransactionHash() => $_has(0);
  void clearSignedTransactionHash() => clearField(1);

  $core.List<$core.int> get stateRootHash => $_getN(1);
  set stateRootHash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasStateRootHash() => $_has(1);
  void clearStateRootHash() => clearField(2);

  $core.List<$core.int> get eventRootHash => $_getN(2);
  set eventRootHash($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasEventRootHash() => $_has(2);
  void clearEventRootHash() => clearField(3);

  Int64 get gasUsed => $_getI64(3);
  set gasUsed(Int64 v) { $_setInt64(3, v); }
  $core.bool hasGasUsed() => $_has(3);
  void clearGasUsed() => clearField(4);
}

