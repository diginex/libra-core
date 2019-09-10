///
//  Generated code. Do not modify.
//  source: proto/vm_errors.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class VMValidationStatusCode extends $pb.ProtobufEnum {
  static const VMValidationStatusCode UnknownValidationStatus = VMValidationStatusCode._(0, 'UnknownValidationStatus');
  static const VMValidationStatusCode InvalidSignature = VMValidationStatusCode._(1, 'InvalidSignature');
  static const VMValidationStatusCode InvalidAuthKey = VMValidationStatusCode._(2, 'InvalidAuthKey');
  static const VMValidationStatusCode SequenceNumberTooOld = VMValidationStatusCode._(3, 'SequenceNumberTooOld');
  static const VMValidationStatusCode SequenceNumberTooNew = VMValidationStatusCode._(4, 'SequenceNumberTooNew');
  static const VMValidationStatusCode InsufficientBalanceForTransactionFee = VMValidationStatusCode._(5, 'InsufficientBalanceForTransactionFee');
  static const VMValidationStatusCode TransactionExpired = VMValidationStatusCode._(6, 'TransactionExpired');
  static const VMValidationStatusCode SendingAccountDoesNotExist = VMValidationStatusCode._(7, 'SendingAccountDoesNotExist');
  static const VMValidationStatusCode RejectedWriteSet = VMValidationStatusCode._(8, 'RejectedWriteSet');
  static const VMValidationStatusCode InvalidWriteSet = VMValidationStatusCode._(9, 'InvalidWriteSet');
  static const VMValidationStatusCode ExceededMaxTransactionSize = VMValidationStatusCode._(10, 'ExceededMaxTransactionSize');
  static const VMValidationStatusCode UnknownScript = VMValidationStatusCode._(11, 'UnknownScript');
  static const VMValidationStatusCode UnknownModule = VMValidationStatusCode._(12, 'UnknownModule');
  static const VMValidationStatusCode MaxGasUnitsExceedsMaxGasUnitsBound = VMValidationStatusCode._(13, 'MaxGasUnitsExceedsMaxGasUnitsBound');
  static const VMValidationStatusCode MaxGasUnitsBelowMinTransactionGasUnits = VMValidationStatusCode._(14, 'MaxGasUnitsBelowMinTransactionGasUnits');
  static const VMValidationStatusCode GasUnitPriceBelowMinBound = VMValidationStatusCode._(15, 'GasUnitPriceBelowMinBound');
  static const VMValidationStatusCode GasUnitPriceAboveMaxBound = VMValidationStatusCode._(16, 'GasUnitPriceAboveMaxBound');

  static const $core.List<VMValidationStatusCode> values = <VMValidationStatusCode> [
    UnknownValidationStatus,
    InvalidSignature,
    InvalidAuthKey,
    SequenceNumberTooOld,
    SequenceNumberTooNew,
    InsufficientBalanceForTransactionFee,
    TransactionExpired,
    SendingAccountDoesNotExist,
    RejectedWriteSet,
    InvalidWriteSet,
    ExceededMaxTransactionSize,
    UnknownScript,
    UnknownModule,
    MaxGasUnitsExceedsMaxGasUnitsBound,
    MaxGasUnitsBelowMinTransactionGasUnits,
    GasUnitPriceBelowMinBound,
    GasUnitPriceAboveMaxBound,
  ];

  static final $core.Map<$core.int, VMValidationStatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VMValidationStatusCode valueOf($core.int value) => _byValue[value];

  const VMValidationStatusCode._($core.int v, $core.String n) : super(v, n);
}

class VMVerificationErrorKind extends $pb.ProtobufEnum {
  static const VMVerificationErrorKind UnknownVerificationError = VMVerificationErrorKind._(0, 'UnknownVerificationError');
  static const VMVerificationErrorKind IndexOutOfBounds = VMVerificationErrorKind._(1, 'IndexOutOfBounds');
  static const VMVerificationErrorKind CodeUnitIndexOutOfBounds = VMVerificationErrorKind._(2, 'CodeUnitIndexOutOfBounds');
  static const VMVerificationErrorKind RangeOutOfBounds = VMVerificationErrorKind._(3, 'RangeOutOfBounds');
  static const VMVerificationErrorKind InvalidSignatureToken = VMVerificationErrorKind._(4, 'InvalidSignatureToken');
  static const VMVerificationErrorKind InvalidFieldDefReference = VMVerificationErrorKind._(5, 'InvalidFieldDefReference');
  static const VMVerificationErrorKind RecursiveStructDefinition = VMVerificationErrorKind._(6, 'RecursiveStructDefinition');
  static const VMVerificationErrorKind InvalidResourceField = VMVerificationErrorKind._(7, 'InvalidResourceField');
  static const VMVerificationErrorKind InvalidFallThrough = VMVerificationErrorKind._(8, 'InvalidFallThrough');
  static const VMVerificationErrorKind JoinFailure = VMVerificationErrorKind._(9, 'JoinFailure');
  static const VMVerificationErrorKind NegativeStackSizeWithinBlock = VMVerificationErrorKind._(10, 'NegativeStackSizeWithinBlock');
  static const VMVerificationErrorKind UnbalancedStack = VMVerificationErrorKind._(11, 'UnbalancedStack');
  static const VMVerificationErrorKind InvalidMainFunctionSignature = VMVerificationErrorKind._(12, 'InvalidMainFunctionSignature');
  static const VMVerificationErrorKind DuplicateElement = VMVerificationErrorKind._(13, 'DuplicateElement');
  static const VMVerificationErrorKind InvalidModuleHandle = VMVerificationErrorKind._(14, 'InvalidModuleHandle');
  static const VMVerificationErrorKind UnimplementedHandle = VMVerificationErrorKind._(15, 'UnimplementedHandle');
  static const VMVerificationErrorKind InconsistentFields = VMVerificationErrorKind._(16, 'InconsistentFields');
  static const VMVerificationErrorKind UnusedFields = VMVerificationErrorKind._(17, 'UnusedFields');
  static const VMVerificationErrorKind LookupFailed = VMVerificationErrorKind._(18, 'LookupFailed');
  static const VMVerificationErrorKind VisibilityMismatch = VMVerificationErrorKind._(19, 'VisibilityMismatch');
  static const VMVerificationErrorKind TypeResolutionFailure = VMVerificationErrorKind._(20, 'TypeResolutionFailure');
  static const VMVerificationErrorKind TypeMismatch = VMVerificationErrorKind._(21, 'TypeMismatch');
  static const VMVerificationErrorKind MissingDependency = VMVerificationErrorKind._(22, 'MissingDependency');
  static const VMVerificationErrorKind PopReferenceError = VMVerificationErrorKind._(23, 'PopReferenceError');
  static const VMVerificationErrorKind PopResourceError = VMVerificationErrorKind._(24, 'PopResourceError');
  static const VMVerificationErrorKind ReleaseRefTypeMismatchError = VMVerificationErrorKind._(25, 'ReleaseRefTypeMismatchError');
  static const VMVerificationErrorKind BrTypeMismatchError = VMVerificationErrorKind._(26, 'BrTypeMismatchError');
  static const VMVerificationErrorKind AbortTypeMismatchError = VMVerificationErrorKind._(27, 'AbortTypeMismatchError');
  static const VMVerificationErrorKind StLocTypeMismatchError = VMVerificationErrorKind._(28, 'StLocTypeMismatchError');
  static const VMVerificationErrorKind StLocUnsafeToDestroyError = VMVerificationErrorKind._(29, 'StLocUnsafeToDestroyError');
  static const VMVerificationErrorKind RetUnsafeToDestroyError = VMVerificationErrorKind._(30, 'RetUnsafeToDestroyError');
  static const VMVerificationErrorKind RetTypeMismatchError = VMVerificationErrorKind._(31, 'RetTypeMismatchError');
  static const VMVerificationErrorKind FreezeRefTypeMismatchError = VMVerificationErrorKind._(32, 'FreezeRefTypeMismatchError');
  static const VMVerificationErrorKind FreezeRefExistsMutableBorrowError = VMVerificationErrorKind._(33, 'FreezeRefExistsMutableBorrowError');
  static const VMVerificationErrorKind BorrowFieldTypeMismatchError = VMVerificationErrorKind._(34, 'BorrowFieldTypeMismatchError');
  static const VMVerificationErrorKind BorrowFieldBadFieldError = VMVerificationErrorKind._(35, 'BorrowFieldBadFieldError');
  static const VMVerificationErrorKind BorrowFieldExistsMutableBorrowError = VMVerificationErrorKind._(36, 'BorrowFieldExistsMutableBorrowError');
  static const VMVerificationErrorKind CopyLocUnavailableError = VMVerificationErrorKind._(37, 'CopyLocUnavailableError');
  static const VMVerificationErrorKind CopyLocResourceError = VMVerificationErrorKind._(38, 'CopyLocResourceError');
  static const VMVerificationErrorKind CopyLocExistsBorrowError = VMVerificationErrorKind._(39, 'CopyLocExistsBorrowError');
  static const VMVerificationErrorKind MoveLocUnavailableError = VMVerificationErrorKind._(40, 'MoveLocUnavailableError');
  static const VMVerificationErrorKind MoveLocExistsBorrowError = VMVerificationErrorKind._(41, 'MoveLocExistsBorrowError');
  static const VMVerificationErrorKind BorrowLocReferenceError = VMVerificationErrorKind._(42, 'BorrowLocReferenceError');
  static const VMVerificationErrorKind BorrowLocUnavailableError = VMVerificationErrorKind._(43, 'BorrowLocUnavailableError');
  static const VMVerificationErrorKind BorrowLocExistsBorrowError = VMVerificationErrorKind._(44, 'BorrowLocExistsBorrowError');
  static const VMVerificationErrorKind CallTypeMismatchError = VMVerificationErrorKind._(45, 'CallTypeMismatchError');
  static const VMVerificationErrorKind CallBorrowedMutableReferenceError = VMVerificationErrorKind._(46, 'CallBorrowedMutableReferenceError');
  static const VMVerificationErrorKind PackTypeMismatchError = VMVerificationErrorKind._(47, 'PackTypeMismatchError');
  static const VMVerificationErrorKind UnpackTypeMismatchError = VMVerificationErrorKind._(48, 'UnpackTypeMismatchError');
  static const VMVerificationErrorKind ReadRefTypeMismatchError = VMVerificationErrorKind._(49, 'ReadRefTypeMismatchError');
  static const VMVerificationErrorKind ReadRefResourceError = VMVerificationErrorKind._(50, 'ReadRefResourceError');
  static const VMVerificationErrorKind ReadRefExistsMutableBorrowError = VMVerificationErrorKind._(51, 'ReadRefExistsMutableBorrowError');
  static const VMVerificationErrorKind WriteRefTypeMismatchError = VMVerificationErrorKind._(52, 'WriteRefTypeMismatchError');
  static const VMVerificationErrorKind WriteRefResourceError = VMVerificationErrorKind._(53, 'WriteRefResourceError');
  static const VMVerificationErrorKind WriteRefExistsBorrowError = VMVerificationErrorKind._(54, 'WriteRefExistsBorrowError');
  static const VMVerificationErrorKind WriteRefNoMutableReferenceError = VMVerificationErrorKind._(55, 'WriteRefNoMutableReferenceError');
  static const VMVerificationErrorKind IntegerOpTypeMismatchError = VMVerificationErrorKind._(56, 'IntegerOpTypeMismatchError');
  static const VMVerificationErrorKind BooleanOpTypeMismatchError = VMVerificationErrorKind._(57, 'BooleanOpTypeMismatchError');
  static const VMVerificationErrorKind EqualityOpTypeMismatchError = VMVerificationErrorKind._(58, 'EqualityOpTypeMismatchError');
  static const VMVerificationErrorKind ExistsResourceTypeMismatchError = VMVerificationErrorKind._(59, 'ExistsResourceTypeMismatchError');
  static const VMVerificationErrorKind ExistsNoResourceError = VMVerificationErrorKind._(60, 'ExistsNoResourceError');
  static const VMVerificationErrorKind BorrowGlobalTypeMismatchError = VMVerificationErrorKind._(61, 'BorrowGlobalTypeMismatchError');
  static const VMVerificationErrorKind BorrowGlobalNoResourceError = VMVerificationErrorKind._(62, 'BorrowGlobalNoResourceError');
  static const VMVerificationErrorKind MoveFromTypeMismatchError = VMVerificationErrorKind._(63, 'MoveFromTypeMismatchError');
  static const VMVerificationErrorKind MoveFromNoResourceError = VMVerificationErrorKind._(64, 'MoveFromNoResourceError');
  static const VMVerificationErrorKind MoveToSenderTypeMismatchError = VMVerificationErrorKind._(65, 'MoveToSenderTypeMismatchError');
  static const VMVerificationErrorKind MoveToSenderNoResourceError = VMVerificationErrorKind._(66, 'MoveToSenderNoResourceError');
  static const VMVerificationErrorKind CreateAccountTypeMismatchError = VMVerificationErrorKind._(67, 'CreateAccountTypeMismatchError');
  static const VMVerificationErrorKind GlobalReferenceError = VMVerificationErrorKind._(68, 'GlobalReferenceError');
  static const VMVerificationErrorKind ModuleAddressDoesNotMatchSender = VMVerificationErrorKind._(69, 'ModuleAddressDoesNotMatchSender');
  static const VMVerificationErrorKind NoModuleHandles = VMVerificationErrorKind._(70, 'NoModuleHandles');
  static const VMVerificationErrorKind MissingAcquiresResourceAnnotationError = VMVerificationErrorKind._(71, 'MissingAcquiresResourceAnnotationError');
  static const VMVerificationErrorKind ExtraneousAcquiresResourceAnnotationError = VMVerificationErrorKind._(72, 'ExtraneousAcquiresResourceAnnotationError');
  static const VMVerificationErrorKind DuplicateAcquiresResourceAnnotationError = VMVerificationErrorKind._(73, 'DuplicateAcquiresResourceAnnotationError');
  static const VMVerificationErrorKind InvalidAcquiresResourceAnnotationError = VMVerificationErrorKind._(74, 'InvalidAcquiresResourceAnnotationError');

  static const $core.List<VMVerificationErrorKind> values = <VMVerificationErrorKind> [
    UnknownVerificationError,
    IndexOutOfBounds,
    CodeUnitIndexOutOfBounds,
    RangeOutOfBounds,
    InvalidSignatureToken,
    InvalidFieldDefReference,
    RecursiveStructDefinition,
    InvalidResourceField,
    InvalidFallThrough,
    JoinFailure,
    NegativeStackSizeWithinBlock,
    UnbalancedStack,
    InvalidMainFunctionSignature,
    DuplicateElement,
    InvalidModuleHandle,
    UnimplementedHandle,
    InconsistentFields,
    UnusedFields,
    LookupFailed,
    VisibilityMismatch,
    TypeResolutionFailure,
    TypeMismatch,
    MissingDependency,
    PopReferenceError,
    PopResourceError,
    ReleaseRefTypeMismatchError,
    BrTypeMismatchError,
    AbortTypeMismatchError,
    StLocTypeMismatchError,
    StLocUnsafeToDestroyError,
    RetUnsafeToDestroyError,
    RetTypeMismatchError,
    FreezeRefTypeMismatchError,
    FreezeRefExistsMutableBorrowError,
    BorrowFieldTypeMismatchError,
    BorrowFieldBadFieldError,
    BorrowFieldExistsMutableBorrowError,
    CopyLocUnavailableError,
    CopyLocResourceError,
    CopyLocExistsBorrowError,
    MoveLocUnavailableError,
    MoveLocExistsBorrowError,
    BorrowLocReferenceError,
    BorrowLocUnavailableError,
    BorrowLocExistsBorrowError,
    CallTypeMismatchError,
    CallBorrowedMutableReferenceError,
    PackTypeMismatchError,
    UnpackTypeMismatchError,
    ReadRefTypeMismatchError,
    ReadRefResourceError,
    ReadRefExistsMutableBorrowError,
    WriteRefTypeMismatchError,
    WriteRefResourceError,
    WriteRefExistsBorrowError,
    WriteRefNoMutableReferenceError,
    IntegerOpTypeMismatchError,
    BooleanOpTypeMismatchError,
    EqualityOpTypeMismatchError,
    ExistsResourceTypeMismatchError,
    ExistsNoResourceError,
    BorrowGlobalTypeMismatchError,
    BorrowGlobalNoResourceError,
    MoveFromTypeMismatchError,
    MoveFromNoResourceError,
    MoveToSenderTypeMismatchError,
    MoveToSenderNoResourceError,
    CreateAccountTypeMismatchError,
    GlobalReferenceError,
    ModuleAddressDoesNotMatchSender,
    NoModuleHandles,
    MissingAcquiresResourceAnnotationError,
    ExtraneousAcquiresResourceAnnotationError,
    DuplicateAcquiresResourceAnnotationError,
    InvalidAcquiresResourceAnnotationError,
  ];

  static final $core.Map<$core.int, VMVerificationErrorKind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VMVerificationErrorKind valueOf($core.int value) => _byValue[value];

  const VMVerificationErrorKind._($core.int v, $core.String n) : super(v, n);
}

class VMInvariantViolationError extends $pb.ProtobufEnum {
  static const VMInvariantViolationError UnknownInvariantViolationError = VMInvariantViolationError._(0, 'UnknownInvariantViolationError');
  static const VMInvariantViolationError OutOfBoundsIndex = VMInvariantViolationError._(1, 'OutOfBoundsIndex');
  static const VMInvariantViolationError OutOfBoundsRange = VMInvariantViolationError._(2, 'OutOfBoundsRange');
  static const VMInvariantViolationError EmptyValueStack = VMInvariantViolationError._(3, 'EmptyValueStack');
  static const VMInvariantViolationError EmptyCallStack = VMInvariantViolationError._(4, 'EmptyCallStack');
  static const VMInvariantViolationError PCOverflow = VMInvariantViolationError._(5, 'PCOverflow');
  static const VMInvariantViolationError LinkerError = VMInvariantViolationError._(6, 'LinkerError');
  static const VMInvariantViolationError LocalReferenceError = VMInvariantViolationError._(7, 'LocalReferenceError');
  static const VMInvariantViolationError StorageError = VMInvariantViolationError._(8, 'StorageError');
  static const VMInvariantViolationError InternalTypeError = VMInvariantViolationError._(9, 'InternalTypeError');
  static const VMInvariantViolationError EventKeyMismatch = VMInvariantViolationError._(10, 'EventKeyMismatch');

  static const $core.List<VMInvariantViolationError> values = <VMInvariantViolationError> [
    UnknownInvariantViolationError,
    OutOfBoundsIndex,
    OutOfBoundsRange,
    EmptyValueStack,
    EmptyCallStack,
    PCOverflow,
    LinkerError,
    LocalReferenceError,
    StorageError,
    InternalTypeError,
    EventKeyMismatch,
  ];

  static final $core.Map<$core.int, VMInvariantViolationError> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VMInvariantViolationError valueOf($core.int value) => _byValue[value];

  const VMInvariantViolationError._($core.int v, $core.String n) : super(v, n);
}

class BinaryError extends $pb.ProtobufEnum {
  static const BinaryError UnknownBinaryError = BinaryError._(0, 'UnknownBinaryError');
  static const BinaryError Malformed = BinaryError._(1, 'Malformed');
  static const BinaryError BadMagic = BinaryError._(2, 'BadMagic');
  static const BinaryError UnknownVersion = BinaryError._(3, 'UnknownVersion');
  static const BinaryError UnknownTableType = BinaryError._(4, 'UnknownTableType');
  static const BinaryError UnknownSignatureType = BinaryError._(5, 'UnknownSignatureType');
  static const BinaryError UnknownSerializedType = BinaryError._(6, 'UnknownSerializedType');
  static const BinaryError UnknownOpcode = BinaryError._(7, 'UnknownOpcode');
  static const BinaryError BadHeaderTable = BinaryError._(8, 'BadHeaderTable');
  static const BinaryError UnexpectedSignatureType = BinaryError._(9, 'UnexpectedSignatureType');
  static const BinaryError DuplicateTable = BinaryError._(10, 'DuplicateTable');

  static const $core.List<BinaryError> values = <BinaryError> [
    UnknownBinaryError,
    Malformed,
    BadMagic,
    UnknownVersion,
    UnknownTableType,
    UnknownSignatureType,
    UnknownSerializedType,
    UnknownOpcode,
    BadHeaderTable,
    UnexpectedSignatureType,
    DuplicateTable,
  ];

  static final $core.Map<$core.int, BinaryError> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BinaryError valueOf($core.int value) => _byValue[value];

  const BinaryError._($core.int v, $core.String n) : super(v, n);
}

class RuntimeStatus extends $pb.ProtobufEnum {
  static const RuntimeStatus UnknownRuntimeStatus = RuntimeStatus._(0, 'UnknownRuntimeStatus');
  static const RuntimeStatus Executed = RuntimeStatus._(1, 'Executed');
  static const RuntimeStatus OutOfGas = RuntimeStatus._(2, 'OutOfGas');
  static const RuntimeStatus ResourceDoesNotExist = RuntimeStatus._(3, 'ResourceDoesNotExist');
  static const RuntimeStatus ResourceAlreadyExists = RuntimeStatus._(4, 'ResourceAlreadyExists');
  static const RuntimeStatus EvictedAccountAccess = RuntimeStatus._(5, 'EvictedAccountAccess');
  static const RuntimeStatus AccountAddressAlreadyExists = RuntimeStatus._(6, 'AccountAddressAlreadyExists');
  static const RuntimeStatus TypeError = RuntimeStatus._(7, 'TypeError');
  static const RuntimeStatus MissingData = RuntimeStatus._(8, 'MissingData');
  static const RuntimeStatus DataFormatError = RuntimeStatus._(9, 'DataFormatError');
  static const RuntimeStatus InvalidData = RuntimeStatus._(10, 'InvalidData');
  static const RuntimeStatus RemoteDataError = RuntimeStatus._(11, 'RemoteDataError');
  static const RuntimeStatus CannotWriteExistingResource = RuntimeStatus._(12, 'CannotWriteExistingResource');
  static const RuntimeStatus ValueSerializationError = RuntimeStatus._(13, 'ValueSerializationError');
  static const RuntimeStatus ValueDeserializationError = RuntimeStatus._(14, 'ValueDeserializationError');
  static const RuntimeStatus DuplicateModuleName = RuntimeStatus._(15, 'DuplicateModuleName');
  static const RuntimeStatus ExecutionStackOverflow = RuntimeStatus._(16, 'ExecutionStackOverflow');
  static const RuntimeStatus CallStackOverflow = RuntimeStatus._(17, 'CallStackOverflow');

  static const $core.List<RuntimeStatus> values = <RuntimeStatus> [
    UnknownRuntimeStatus,
    Executed,
    OutOfGas,
    ResourceDoesNotExist,
    ResourceAlreadyExists,
    EvictedAccountAccess,
    AccountAddressAlreadyExists,
    TypeError,
    MissingData,
    DataFormatError,
    InvalidData,
    RemoteDataError,
    CannotWriteExistingResource,
    ValueSerializationError,
    ValueDeserializationError,
    DuplicateModuleName,
    ExecutionStackOverflow,
    CallStackOverflow,
  ];

  static final $core.Map<$core.int, RuntimeStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RuntimeStatus valueOf($core.int value) => _byValue[value];

  const RuntimeStatus._($core.int v, $core.String n) : super(v, n);
}

class VMVerificationStatus_StatusKind extends $pb.ProtobufEnum {
  static const VMVerificationStatus_StatusKind SCRIPT = VMVerificationStatus_StatusKind._(0, 'SCRIPT');
  static const VMVerificationStatus_StatusKind MODULE = VMVerificationStatus_StatusKind._(1, 'MODULE');
  static const VMVerificationStatus_StatusKind DEPENDENCY = VMVerificationStatus_StatusKind._(2, 'DEPENDENCY');

  static const $core.List<VMVerificationStatus_StatusKind> values = <VMVerificationStatus_StatusKind> [
    SCRIPT,
    MODULE,
    DEPENDENCY,
  ];

  static final $core.Map<$core.int, VMVerificationStatus_StatusKind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VMVerificationStatus_StatusKind valueOf($core.int value) => _byValue[value];

  const VMVerificationStatus_StatusKind._($core.int v, $core.String n) : super(v, n);
}

class ArithmeticError_ArithmeticErrorType extends $pb.ProtobufEnum {
  static const ArithmeticError_ArithmeticErrorType UnknownArithmeticError = ArithmeticError_ArithmeticErrorType._(0, 'UnknownArithmeticError');
  static const ArithmeticError_ArithmeticErrorType Underflow = ArithmeticError_ArithmeticErrorType._(1, 'Underflow');
  static const ArithmeticError_ArithmeticErrorType Overflow = ArithmeticError_ArithmeticErrorType._(2, 'Overflow');
  static const ArithmeticError_ArithmeticErrorType DivisionByZero = ArithmeticError_ArithmeticErrorType._(3, 'DivisionByZero');

  static const $core.List<ArithmeticError_ArithmeticErrorType> values = <ArithmeticError_ArithmeticErrorType> [
    UnknownArithmeticError,
    Underflow,
    Overflow,
    DivisionByZero,
  ];

  static final $core.Map<$core.int, ArithmeticError_ArithmeticErrorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ArithmeticError_ArithmeticErrorType valueOf($core.int value) => _byValue[value];

  const ArithmeticError_ArithmeticErrorType._($core.int v, $core.String n) : super(v, n);
}

class DynamicReferenceError_DynamicReferenceErrorType extends $pb.ProtobufEnum {
  static const DynamicReferenceError_DynamicReferenceErrorType UnknownDynamicReferenceError = DynamicReferenceError_DynamicReferenceErrorType._(0, 'UnknownDynamicReferenceError');
  static const DynamicReferenceError_DynamicReferenceErrorType MoveOfBorrowedResource = DynamicReferenceError_DynamicReferenceErrorType._(1, 'MoveOfBorrowedResource');
  static const DynamicReferenceError_DynamicReferenceErrorType GlobalRefAlreadyReleased = DynamicReferenceError_DynamicReferenceErrorType._(2, 'GlobalRefAlreadyReleased');
  static const DynamicReferenceError_DynamicReferenceErrorType MissingReleaseRef = DynamicReferenceError_DynamicReferenceErrorType._(3, 'MissingReleaseRef');
  static const DynamicReferenceError_DynamicReferenceErrorType GlobalAlreadyBorrowed = DynamicReferenceError_DynamicReferenceErrorType._(4, 'GlobalAlreadyBorrowed');

  static const $core.List<DynamicReferenceError_DynamicReferenceErrorType> values = <DynamicReferenceError_DynamicReferenceErrorType> [
    UnknownDynamicReferenceError,
    MoveOfBorrowedResource,
    GlobalRefAlreadyReleased,
    MissingReleaseRef,
    GlobalAlreadyBorrowed,
  ];

  static final $core.Map<$core.int, DynamicReferenceError_DynamicReferenceErrorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DynamicReferenceError_DynamicReferenceErrorType valueOf($core.int value) => _byValue[value];

  const DynamicReferenceError_DynamicReferenceErrorType._($core.int v, $core.String n) : super(v, n);
}

