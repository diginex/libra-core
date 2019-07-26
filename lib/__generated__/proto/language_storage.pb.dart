///
//  Generated code. Do not modify.
//  source: proto/language_storage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class ModuleId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ModuleId', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'address', $pb.PbFieldType.OY)
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  ModuleId._() : super();
  factory ModuleId() => create();
  factory ModuleId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModuleId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ModuleId clone() => ModuleId()..mergeFromMessage(this);
  ModuleId copyWith(void Function(ModuleId) updates) => super.copyWith((message) => updates(message as ModuleId));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModuleId create() => ModuleId._();
  ModuleId createEmptyInstance() => create();
  static $pb.PbList<ModuleId> createRepeated() => $pb.PbList<ModuleId>();
  static ModuleId getDefault() => _defaultInstance ??= create()..freeze();
  static ModuleId _defaultInstance;

  $core.List<$core.int> get address => $_getN(0);
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasAddress() => $_has(0);
  void clearAddress() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

