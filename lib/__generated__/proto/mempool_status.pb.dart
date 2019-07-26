///
//  Generated code. Do not modify.
//  source: proto/mempool_status.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'mempool_status.pbenum.dart';

export 'mempool_status.pbenum.dart';

class MempoolAddTransactionStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MempoolAddTransactionStatus', package: const $pb.PackageName('mempool'))
    ..e<MempoolAddTransactionStatusCode>(1, 'code', $pb.PbFieldType.OE, MempoolAddTransactionStatusCode.Valid, MempoolAddTransactionStatusCode.valueOf, MempoolAddTransactionStatusCode.values)
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  MempoolAddTransactionStatus._() : super();
  factory MempoolAddTransactionStatus() => create();
  factory MempoolAddTransactionStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MempoolAddTransactionStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MempoolAddTransactionStatus clone() => MempoolAddTransactionStatus()..mergeFromMessage(this);
  MempoolAddTransactionStatus copyWith(void Function(MempoolAddTransactionStatus) updates) => super.copyWith((message) => updates(message as MempoolAddTransactionStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MempoolAddTransactionStatus create() => MempoolAddTransactionStatus._();
  MempoolAddTransactionStatus createEmptyInstance() => create();
  static $pb.PbList<MempoolAddTransactionStatus> createRepeated() => $pb.PbList<MempoolAddTransactionStatus>();
  static MempoolAddTransactionStatus getDefault() => _defaultInstance ??= create()..freeze();
  static MempoolAddTransactionStatus _defaultInstance;

  MempoolAddTransactionStatusCode get code => $_getN(0);
  set code(MempoolAddTransactionStatusCode v) { setField(1, v); }
  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  $core.String get message => $_getS(1, '');
  set message($core.String v) { $_setString(1, v); }
  $core.bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

