///
//  Generated code. Do not modify.
//  source: proto/vm_errors.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'language_storage.pb.dart' as $12;

import 'vm_errors.pbenum.dart';

export 'vm_errors.pbenum.dart';

class VMValidationStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VMValidationStatus', package: const $pb.PackageName('types'))
    ..e<VMValidationStatusCode>(1, 'code', $pb.PbFieldType.OE, VMValidationStatusCode.UnknownValidationStatus, VMValidationStatusCode.valueOf, VMValidationStatusCode.values)
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  VMValidationStatus._() : super();
  factory VMValidationStatus() => create();
  factory VMValidationStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VMValidationStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VMValidationStatus clone() => VMValidationStatus()..mergeFromMessage(this);
  VMValidationStatus copyWith(void Function(VMValidationStatus) updates) => super.copyWith((message) => updates(message as VMValidationStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VMValidationStatus create() => VMValidationStatus._();
  VMValidationStatus createEmptyInstance() => create();
  static $pb.PbList<VMValidationStatus> createRepeated() => $pb.PbList<VMValidationStatus>();
  static VMValidationStatus getDefault() => _defaultInstance ??= create()..freeze();
  static VMValidationStatus _defaultInstance;

  VMValidationStatusCode get code => $_getN(0);
  set code(VMValidationStatusCode v) { setField(1, v); }
  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  $core.String get message => $_getS(1, '');
  set message($core.String v) { $_setString(1, v); }
  $core.bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class VMVerificationStatusList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VMVerificationStatusList', package: const $pb.PackageName('types'))
    ..pc<VMVerificationStatus>(1, 'statusList', $pb.PbFieldType.PM,VMVerificationStatus.create)
    ..hasRequiredFields = false
  ;

  VMVerificationStatusList._() : super();
  factory VMVerificationStatusList() => create();
  factory VMVerificationStatusList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VMVerificationStatusList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VMVerificationStatusList clone() => VMVerificationStatusList()..mergeFromMessage(this);
  VMVerificationStatusList copyWith(void Function(VMVerificationStatusList) updates) => super.copyWith((message) => updates(message as VMVerificationStatusList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VMVerificationStatusList create() => VMVerificationStatusList._();
  VMVerificationStatusList createEmptyInstance() => create();
  static $pb.PbList<VMVerificationStatusList> createRepeated() => $pb.PbList<VMVerificationStatusList>();
  static VMVerificationStatusList getDefault() => _defaultInstance ??= create()..freeze();
  static VMVerificationStatusList _defaultInstance;

  $core.List<VMVerificationStatus> get statusList => $_getList(0);
}

class VMVerificationStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VMVerificationStatus', package: const $pb.PackageName('types'))
    ..e<VMVerificationStatus_StatusKind>(1, 'statusKind', $pb.PbFieldType.OE, VMVerificationStatus_StatusKind.SCRIPT, VMVerificationStatus_StatusKind.valueOf, VMVerificationStatus_StatusKind.values)
    ..a<$core.int>(2, 'moduleIdx', $pb.PbFieldType.OU3)
    ..e<VMVerificationErrorKind>(3, 'errorKind', $pb.PbFieldType.OE, VMVerificationErrorKind.UnknownVerificationError, VMVerificationErrorKind.valueOf, VMVerificationErrorKind.values)
    ..aOS(4, 'message')
    ..a<$12.ModuleId>(5, 'dependencyId', $pb.PbFieldType.OM, $12.ModuleId.getDefault, $12.ModuleId.create)
    ..hasRequiredFields = false
  ;

  VMVerificationStatus._() : super();
  factory VMVerificationStatus() => create();
  factory VMVerificationStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VMVerificationStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VMVerificationStatus clone() => VMVerificationStatus()..mergeFromMessage(this);
  VMVerificationStatus copyWith(void Function(VMVerificationStatus) updates) => super.copyWith((message) => updates(message as VMVerificationStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VMVerificationStatus create() => VMVerificationStatus._();
  VMVerificationStatus createEmptyInstance() => create();
  static $pb.PbList<VMVerificationStatus> createRepeated() => $pb.PbList<VMVerificationStatus>();
  static VMVerificationStatus getDefault() => _defaultInstance ??= create()..freeze();
  static VMVerificationStatus _defaultInstance;

  VMVerificationStatus_StatusKind get statusKind => $_getN(0);
  set statusKind(VMVerificationStatus_StatusKind v) { setField(1, v); }
  $core.bool hasStatusKind() => $_has(0);
  void clearStatusKind() => clearField(1);

  $core.int get moduleIdx => $_get(1, 0);
  set moduleIdx($core.int v) { $_setUnsignedInt32(1, v); }
  $core.bool hasModuleIdx() => $_has(1);
  void clearModuleIdx() => clearField(2);

  VMVerificationErrorKind get errorKind => $_getN(2);
  set errorKind(VMVerificationErrorKind v) { setField(3, v); }
  $core.bool hasErrorKind() => $_has(2);
  void clearErrorKind() => clearField(3);

  $core.String get message => $_getS(3, '');
  set message($core.String v) { $_setString(3, v); }
  $core.bool hasMessage() => $_has(3);
  void clearMessage() => clearField(4);

  $12.ModuleId get dependencyId => $_getN(4);
  set dependencyId($12.ModuleId v) { setField(5, v); }
  $core.bool hasDependencyId() => $_has(4);
  void clearDependencyId() => clearField(5);
}

class AssertionFailure extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssertionFailure', package: const $pb.PackageName('types'))
    ..a<Int64>(1, 'assertionErrorCode', $pb.PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AssertionFailure._() : super();
  factory AssertionFailure() => create();
  factory AssertionFailure.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssertionFailure.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssertionFailure clone() => AssertionFailure()..mergeFromMessage(this);
  AssertionFailure copyWith(void Function(AssertionFailure) updates) => super.copyWith((message) => updates(message as AssertionFailure));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssertionFailure create() => AssertionFailure._();
  AssertionFailure createEmptyInstance() => create();
  static $pb.PbList<AssertionFailure> createRepeated() => $pb.PbList<AssertionFailure>();
  static AssertionFailure getDefault() => _defaultInstance ??= create()..freeze();
  static AssertionFailure _defaultInstance;

  Int64 get assertionErrorCode => $_getI64(0);
  set assertionErrorCode(Int64 v) { $_setInt64(0, v); }
  $core.bool hasAssertionErrorCode() => $_has(0);
  void clearAssertionErrorCode() => clearField(1);
}

class ArithmeticError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ArithmeticError', package: const $pb.PackageName('types'))
    ..e<ArithmeticError_ArithmeticErrorType>(1, 'errorCode', $pb.PbFieldType.OE, ArithmeticError_ArithmeticErrorType.UnknownArithmeticError, ArithmeticError_ArithmeticErrorType.valueOf, ArithmeticError_ArithmeticErrorType.values)
    ..hasRequiredFields = false
  ;

  ArithmeticError._() : super();
  factory ArithmeticError() => create();
  factory ArithmeticError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ArithmeticError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ArithmeticError clone() => ArithmeticError()..mergeFromMessage(this);
  ArithmeticError copyWith(void Function(ArithmeticError) updates) => super.copyWith((message) => updates(message as ArithmeticError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ArithmeticError create() => ArithmeticError._();
  ArithmeticError createEmptyInstance() => create();
  static $pb.PbList<ArithmeticError> createRepeated() => $pb.PbList<ArithmeticError>();
  static ArithmeticError getDefault() => _defaultInstance ??= create()..freeze();
  static ArithmeticError _defaultInstance;

  ArithmeticError_ArithmeticErrorType get errorCode => $_getN(0);
  set errorCode(ArithmeticError_ArithmeticErrorType v) { setField(1, v); }
  $core.bool hasErrorCode() => $_has(0);
  void clearErrorCode() => clearField(1);
}

class DynamicReferenceError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DynamicReferenceError', package: const $pb.PackageName('types'))
    ..e<DynamicReferenceError_DynamicReferenceErrorType>(1, 'errorCode', $pb.PbFieldType.OE, DynamicReferenceError_DynamicReferenceErrorType.UnknownDynamicReferenceError, DynamicReferenceError_DynamicReferenceErrorType.valueOf, DynamicReferenceError_DynamicReferenceErrorType.values)
    ..hasRequiredFields = false
  ;

  DynamicReferenceError._() : super();
  factory DynamicReferenceError() => create();
  factory DynamicReferenceError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DynamicReferenceError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DynamicReferenceError clone() => DynamicReferenceError()..mergeFromMessage(this);
  DynamicReferenceError copyWith(void Function(DynamicReferenceError) updates) => super.copyWith((message) => updates(message as DynamicReferenceError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DynamicReferenceError create() => DynamicReferenceError._();
  DynamicReferenceError createEmptyInstance() => create();
  static $pb.PbList<DynamicReferenceError> createRepeated() => $pb.PbList<DynamicReferenceError>();
  static DynamicReferenceError getDefault() => _defaultInstance ??= create()..freeze();
  static DynamicReferenceError _defaultInstance;

  DynamicReferenceError_DynamicReferenceErrorType get errorCode => $_getN(0);
  set errorCode(DynamicReferenceError_DynamicReferenceErrorType v) { setField(1, v); }
  $core.bool hasErrorCode() => $_has(0);
  void clearErrorCode() => clearField(1);
}

enum ExecutionStatus_ExecutionStatus {
  runtimeStatus, 
  assertionFailure, 
  arithmeticError, 
  referenceError, 
  notSet
}

class ExecutionStatus extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ExecutionStatus_ExecutionStatus> _ExecutionStatus_ExecutionStatusByTag = {
    1 : ExecutionStatus_ExecutionStatus.runtimeStatus,
    2 : ExecutionStatus_ExecutionStatus.assertionFailure,
    3 : ExecutionStatus_ExecutionStatus.arithmeticError,
    4 : ExecutionStatus_ExecutionStatus.referenceError,
    0 : ExecutionStatus_ExecutionStatus.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExecutionStatus', package: const $pb.PackageName('types'))
    ..oo(0, [1, 2, 3, 4])
    ..e<RuntimeStatus>(1, 'runtimeStatus', $pb.PbFieldType.OE, RuntimeStatus.UnknownRuntimeStatus, RuntimeStatus.valueOf, RuntimeStatus.values)
    ..a<AssertionFailure>(2, 'assertionFailure', $pb.PbFieldType.OM, AssertionFailure.getDefault, AssertionFailure.create)
    ..a<ArithmeticError>(3, 'arithmeticError', $pb.PbFieldType.OM, ArithmeticError.getDefault, ArithmeticError.create)
    ..a<DynamicReferenceError>(4, 'referenceError', $pb.PbFieldType.OM, DynamicReferenceError.getDefault, DynamicReferenceError.create)
    ..hasRequiredFields = false
  ;

  ExecutionStatus._() : super();
  factory ExecutionStatus() => create();
  factory ExecutionStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExecutionStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ExecutionStatus clone() => ExecutionStatus()..mergeFromMessage(this);
  ExecutionStatus copyWith(void Function(ExecutionStatus) updates) => super.copyWith((message) => updates(message as ExecutionStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecutionStatus create() => ExecutionStatus._();
  ExecutionStatus createEmptyInstance() => create();
  static $pb.PbList<ExecutionStatus> createRepeated() => $pb.PbList<ExecutionStatus>();
  static ExecutionStatus getDefault() => _defaultInstance ??= create()..freeze();
  static ExecutionStatus _defaultInstance;

  ExecutionStatus_ExecutionStatus whichExecutionStatus() => _ExecutionStatus_ExecutionStatusByTag[$_whichOneof(0)];
  void clearExecutionStatus() => clearField($_whichOneof(0));

  RuntimeStatus get runtimeStatus => $_getN(0);
  set runtimeStatus(RuntimeStatus v) { setField(1, v); }
  $core.bool hasRuntimeStatus() => $_has(0);
  void clearRuntimeStatus() => clearField(1);

  AssertionFailure get assertionFailure => $_getN(1);
  set assertionFailure(AssertionFailure v) { setField(2, v); }
  $core.bool hasAssertionFailure() => $_has(1);
  void clearAssertionFailure() => clearField(2);

  ArithmeticError get arithmeticError => $_getN(2);
  set arithmeticError(ArithmeticError v) { setField(3, v); }
  $core.bool hasArithmeticError() => $_has(2);
  void clearArithmeticError() => clearField(3);

  DynamicReferenceError get referenceError => $_getN(3);
  set referenceError(DynamicReferenceError v) { setField(4, v); }
  $core.bool hasReferenceError() => $_has(3);
  void clearReferenceError() => clearField(4);
}

enum VMStatus_ErrorType {
  validation, 
  verification, 
  invariantViolation, 
  deserialization, 
  execution, 
  notSet
}

class VMStatus extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, VMStatus_ErrorType> _VMStatus_ErrorTypeByTag = {
    1 : VMStatus_ErrorType.validation,
    2 : VMStatus_ErrorType.verification,
    3 : VMStatus_ErrorType.invariantViolation,
    4 : VMStatus_ErrorType.deserialization,
    5 : VMStatus_ErrorType.execution,
    0 : VMStatus_ErrorType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VMStatus', package: const $pb.PackageName('types'))
    ..oo(0, [1, 2, 3, 4, 5])
    ..a<VMValidationStatus>(1, 'validation', $pb.PbFieldType.OM, VMValidationStatus.getDefault, VMValidationStatus.create)
    ..a<VMVerificationStatusList>(2, 'verification', $pb.PbFieldType.OM, VMVerificationStatusList.getDefault, VMVerificationStatusList.create)
    ..e<VMInvariantViolationError>(3, 'invariantViolation', $pb.PbFieldType.OE, VMInvariantViolationError.UnknownInvariantViolationError, VMInvariantViolationError.valueOf, VMInvariantViolationError.values)
    ..e<BinaryError>(4, 'deserialization', $pb.PbFieldType.OE, BinaryError.UnknownBinaryError, BinaryError.valueOf, BinaryError.values)
    ..a<ExecutionStatus>(5, 'execution', $pb.PbFieldType.OM, ExecutionStatus.getDefault, ExecutionStatus.create)
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

  VMStatus_ErrorType whichErrorType() => _VMStatus_ErrorTypeByTag[$_whichOneof(0)];
  void clearErrorType() => clearField($_whichOneof(0));

  VMValidationStatus get validation => $_getN(0);
  set validation(VMValidationStatus v) { setField(1, v); }
  $core.bool hasValidation() => $_has(0);
  void clearValidation() => clearField(1);

  VMVerificationStatusList get verification => $_getN(1);
  set verification(VMVerificationStatusList v) { setField(2, v); }
  $core.bool hasVerification() => $_has(1);
  void clearVerification() => clearField(2);

  VMInvariantViolationError get invariantViolation => $_getN(2);
  set invariantViolation(VMInvariantViolationError v) { setField(3, v); }
  $core.bool hasInvariantViolation() => $_has(2);
  void clearInvariantViolation() => clearField(3);

  BinaryError get deserialization => $_getN(3);
  set deserialization(BinaryError v) { setField(4, v); }
  $core.bool hasDeserialization() => $_has(3);
  void clearDeserialization() => clearField(4);

  ExecutionStatus get execution => $_getN(4);
  set execution(ExecutionStatus v) { setField(5, v); }
  $core.bool hasExecution() => $_has(4);
  void clearExecution() => clearField(5);
}

