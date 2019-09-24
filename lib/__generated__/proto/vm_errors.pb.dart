///
//  Generated code. Do not modify.
//  source: proto/vm_errors.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class VMStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VMStatus', package: const $pb.PackageName('types'))
    ..a<Int64>(1, 'majorStatus', $pb.PbFieldType.OU6, Int64.ZERO)
    ..aOB(2, 'hasSubStatus')
    ..a<Int64>(3, 'subStatus_3', $pb.PbFieldType.OU6, Int64.ZERO)
    ..aOB(4, 'hasMessage')
    ..aOS(5, 'message_5')
    ..hasRequiredFields = false
  ;

  VMStatus._() : super();
  factory VMStatus() => create();
  factory VMStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VMStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VMStatus clone() => VMStatus()..mergeFromMessage(this);
  VMStatus copyWith(void Function(VMStatus) updates) => super.copyWith((message) => updates(message as VMStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VMStatus create() => VMStatus._();
  VMStatus createEmptyInstance() => create();
  static $pb.PbList<VMStatus> createRepeated() => $pb.PbList<VMStatus>();
  static VMStatus getDefault() => _defaultInstance ??= create()..freeze();
  static VMStatus _defaultInstance;

  Int64 get majorStatus => $_getI64(0);
  set majorStatus(Int64 v) { $_setInt64(0, v); }
  $core.bool hasMajorStatus() => $_has(0);
  void clearMajorStatus() => clearField(1);

  $core.bool get hasSubStatus => $_get(1, false);
  set hasSubStatus($core.bool v) { $_setBool(1, v); }
  $core.bool hasHasSubStatus() => $_has(1);
  void clearHasSubStatus() => clearField(2);

  Int64 get subStatus_3 => $_getI64(2);
  set subStatus_3(Int64 v) { $_setInt64(2, v); }
  $core.bool hasSubStatus_3() => $_has(2);
  void clearSubStatus_3() => clearField(3);

  $core.bool get hasMessage => $_get(3, false);
  set hasMessage($core.bool v) { $_setBool(3, v); }
  $core.bool hasHasMessage() => $_has(3);
  void clearHasMessage() => clearField(4);

  $core.String get message_5 => $_getS(4, '');
  set message_5($core.String v) { $_setString(4, v); }
  $core.bool hasMessage_5() => $_has(4);
  void clearMessage_5() => clearField(5);
}

