///
//  Generated code. Do not modify.
//  source: proto/access_path.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class AccessPath extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccessPath', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'address', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'path', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AccessPath._() : super();
  factory AccessPath() => create();
  factory AccessPath.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessPath.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccessPath clone() => AccessPath()..mergeFromMessage(this);
  AccessPath copyWith(void Function(AccessPath) updates) => super.copyWith((message) => updates(message as AccessPath));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccessPath create() => AccessPath._();
  AccessPath createEmptyInstance() => create();
  static $pb.PbList<AccessPath> createRepeated() => $pb.PbList<AccessPath>();
  static AccessPath getDefault() => _defaultInstance ??= create()..freeze();
  static AccessPath _defaultInstance;

  $core.List<$core.int> get address => $_getN(0);
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasAddress() => $_has(0);
  void clearAddress() => clearField(1);

  $core.List<$core.int> get path => $_getN(1);
  set path($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasPath() => $_has(1);
  void clearPath() => clearField(2);
}

