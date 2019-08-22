///
//  Generated code. Do not modify.
//  source: proto/vm_errors.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const VMValidationStatusCode$json = const {
  '1': 'VMValidationStatusCode',
  '2': const [
    const {'1': 'UnknownValidationStatus', '2': 0},
    const {'1': 'InvalidSignature', '2': 1},
    const {'1': 'InvalidAuthKey', '2': 2},
    const {'1': 'SequenceNumberTooOld', '2': 3},
    const {'1': 'SequenceNumberTooNew', '2': 4},
    const {'1': 'InsufficientBalanceForTransactionFee', '2': 5},
    const {'1': 'TransactionExpired', '2': 6},
    const {'1': 'SendingAccountDoesNotExist', '2': 7},
    const {'1': 'RejectedWriteSet', '2': 8},
    const {'1': 'InvalidWriteSet', '2': 9},
    const {'1': 'ExceededMaxTransactionSize', '2': 10},
    const {'1': 'UnknownScript', '2': 11},
    const {'1': 'UnknownModule', '2': 12},
    const {'1': 'MaxGasUnitsExceedsMaxGasUnitsBound', '2': 13},
    const {'1': 'MaxGasUnitsBelowMinTransactionGasUnits', '2': 14},
    const {'1': 'GasUnitPriceBelowMinBound', '2': 15},
    const {'1': 'GasUnitPriceAboveMaxBound', '2': 16},
  ],
};

const VMVerificationErrorKind$json = const {
  '1': 'VMVerificationErrorKind',
  '2': const [
    const {'1': 'UnknownVerificationError', '2': 0},
    const {'1': 'IndexOutOfBounds', '2': 1},
    const {'1': 'CodeUnitIndexOutOfBounds', '2': 2},
    const {'1': 'RangeOutOfBounds', '2': 3},
    const {'1': 'InvalidSignatureToken', '2': 4},
    const {'1': 'InvalidFieldDefReference', '2': 5},
    const {'1': 'RecursiveStructDefinition', '2': 6},
    const {'1': 'InvalidResourceField', '2': 7},
    const {'1': 'InvalidFallThrough', '2': 8},
    const {'1': 'JoinFailure', '2': 9},
    const {'1': 'NegativeStackSizeWithinBlock', '2': 10},
    const {'1': 'UnbalancedStack', '2': 11},
    const {'1': 'InvalidMainFunctionSignature', '2': 12},
    const {'1': 'DuplicateElement', '2': 13},
    const {'1': 'InvalidModuleHandle', '2': 14},
    const {'1': 'UnimplementedHandle', '2': 15},
    const {'1': 'InconsistentFields', '2': 16},
    const {'1': 'UnusedFields', '2': 17},
    const {'1': 'LookupFailed', '2': 18},
    const {'1': 'VisibilityMismatch', '2': 19},
    const {'1': 'TypeResolutionFailure', '2': 20},
    const {'1': 'TypeMismatch', '2': 21},
    const {'1': 'MissingDependency', '2': 22},
    const {'1': 'PopReferenceError', '2': 23},
    const {'1': 'PopResourceError', '2': 24},
    const {'1': 'ReleaseRefTypeMismatchError', '2': 25},
    const {'1': 'BrTypeMismatchError', '2': 26},
    const {'1': 'AbortTypeMismatchError', '2': 27},
    const {'1': 'StLocTypeMismatchError', '2': 28},
    const {'1': 'StLocUnsafeToDestroyError', '2': 29},
    const {'1': 'RetUnsafeToDestroyError', '2': 30},
    const {'1': 'RetTypeMismatchError', '2': 31},
    const {'1': 'FreezeRefTypeMismatchError', '2': 32},
    const {'1': 'FreezeRefExistsMutableBorrowError', '2': 33},
    const {'1': 'BorrowFieldTypeMismatchError', '2': 34},
    const {'1': 'BorrowFieldBadFieldError', '2': 35},
    const {'1': 'BorrowFieldExistsMutableBorrowError', '2': 36},
    const {'1': 'CopyLocUnavailableError', '2': 37},
    const {'1': 'CopyLocResourceError', '2': 38},
    const {'1': 'CopyLocExistsBorrowError', '2': 39},
    const {'1': 'MoveLocUnavailableError', '2': 40},
    const {'1': 'MoveLocExistsBorrowError', '2': 41},
    const {'1': 'BorrowLocReferenceError', '2': 42},
    const {'1': 'BorrowLocUnavailableError', '2': 43},
    const {'1': 'BorrowLocExistsBorrowError', '2': 44},
    const {'1': 'CallTypeMismatchError', '2': 45},
    const {'1': 'CallBorrowedMutableReferenceError', '2': 46},
    const {'1': 'PackTypeMismatchError', '2': 47},
    const {'1': 'UnpackTypeMismatchError', '2': 48},
    const {'1': 'ReadRefTypeMismatchError', '2': 49},
    const {'1': 'ReadRefResourceError', '2': 50},
    const {'1': 'ReadRefExistsMutableBorrowError', '2': 51},
    const {'1': 'WriteRefTypeMismatchError', '2': 52},
    const {'1': 'WriteRefResourceError', '2': 53},
    const {'1': 'WriteRefExistsBorrowError', '2': 54},
    const {'1': 'WriteRefNoMutableReferenceError', '2': 55},
    const {'1': 'IntegerOpTypeMismatchError', '2': 56},
    const {'1': 'BooleanOpTypeMismatchError', '2': 57},
    const {'1': 'EqualityOpTypeMismatchError', '2': 58},
    const {'1': 'ExistsResourceTypeMismatchError', '2': 59},
    const {'1': 'ExistsNoResourceError', '2': 60},
    const {'1': 'BorrowGlobalTypeMismatchError', '2': 61},
    const {'1': 'BorrowGlobalNoResourceError', '2': 62},
    const {'1': 'MoveFromTypeMismatchError', '2': 63},
    const {'1': 'MoveFromNoResourceError', '2': 64},
    const {'1': 'MoveToSenderTypeMismatchError', '2': 65},
    const {'1': 'MoveToSenderNoResourceError', '2': 66},
    const {'1': 'CreateAccountTypeMismatchError', '2': 67},
    const {'1': 'GlobalReferenceError', '2': 68},
    const {'1': 'ModuleAddressDoesNotMatchSender', '2': 69},
    const {'1': 'NoModuleHandles', '2': 70},
    const {'1': 'MissingAcquiresResourceAnnotationError', '2': 71},
    const {'1': 'ExtraneousAcquiresResourceAnnotationError', '2': 72},
    const {'1': 'DuplicateAcquiresResourceAnnotationError', '2': 73},
    const {'1': 'InvalidAcquiresResourceAnnotationError', '2': 74},
  ],
};

const VMInvariantViolationError$json = const {
  '1': 'VMInvariantViolationError',
  '2': const [
    const {'1': 'UnknownInvariantViolationError', '2': 0},
    const {'1': 'OutOfBoundsIndex', '2': 1},
    const {'1': 'OutOfBoundsRange', '2': 2},
    const {'1': 'EmptyValueStack', '2': 3},
    const {'1': 'EmptyCallStack', '2': 4},
    const {'1': 'PCOverflow', '2': 5},
    const {'1': 'LinkerError', '2': 6},
    const {'1': 'LocalReferenceError', '2': 7},
    const {'1': 'StorageError', '2': 8},
    const {'1': 'InternalTypeError', '2': 9},
    const {'1': 'EventKeyMismatch', '2': 10},
  ],
};

const BinaryError$json = const {
  '1': 'BinaryError',
  '2': const [
    const {'1': 'UnknownBinaryError', '2': 0},
    const {'1': 'Malformed', '2': 1},
    const {'1': 'BadMagic', '2': 2},
    const {'1': 'UnknownVersion', '2': 3},
    const {'1': 'UnknownTableType', '2': 4},
    const {'1': 'UnknownSignatureType', '2': 5},
    const {'1': 'UnknownSerializedType', '2': 6},
    const {'1': 'UnknownOpcode', '2': 7},
    const {'1': 'BadHeaderTable', '2': 8},
    const {'1': 'UnexpectedSignatureType', '2': 9},
    const {'1': 'DuplicateTable', '2': 10},
  ],
};

const RuntimeStatus$json = const {
  '1': 'RuntimeStatus',
  '2': const [
    const {'1': 'UnknownRuntimeStatus', '2': 0},
    const {'1': 'Executed', '2': 1},
    const {'1': 'OutOfGas', '2': 2},
    const {'1': 'ResourceDoesNotExist', '2': 3},
    const {'1': 'ResourceAlreadyExists', '2': 4},
    const {'1': 'EvictedAccountAccess', '2': 5},
    const {'1': 'AccountAddressAlreadyExists', '2': 6},
    const {'1': 'TypeError', '2': 7},
    const {'1': 'MissingData', '2': 8},
    const {'1': 'DataFormatError', '2': 9},
    const {'1': 'InvalidData', '2': 10},
    const {'1': 'RemoteDataError', '2': 11},
    const {'1': 'CannotWriteExistingResource', '2': 12},
    const {'1': 'ValueSerializationError', '2': 13},
    const {'1': 'ValueDeserializationError', '2': 14},
    const {'1': 'DuplicateModuleName', '2': 15},
  ],
};

const VMValidationStatus$json = const {
  '1': 'VMValidationStatus',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.types.VMValidationStatusCode', '10': 'code'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const VMVerificationStatusList$json = const {
  '1': 'VMVerificationStatusList',
  '2': const [
    const {'1': 'status_list', '3': 1, '4': 3, '5': 11, '6': '.types.VMVerificationStatus', '10': 'statusList'},
  ],
};

const VMVerificationStatus$json = const {
  '1': 'VMVerificationStatus',
  '2': const [
    const {'1': 'status_kind', '3': 1, '4': 1, '5': 14, '6': '.types.VMVerificationStatus.StatusKind', '10': 'statusKind'},
    const {'1': 'module_idx', '3': 2, '4': 1, '5': 13, '10': 'moduleIdx'},
    const {'1': 'error_kind', '3': 3, '4': 1, '5': 14, '6': '.types.VMVerificationErrorKind', '10': 'errorKind'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'dependency_id', '3': 5, '4': 1, '5': 11, '6': '.types.ModuleId', '10': 'dependencyId'},
  ],
  '4': const [VMVerificationStatus_StatusKind$json],
};

const VMVerificationStatus_StatusKind$json = const {
  '1': 'StatusKind',
  '2': const [
    const {'1': 'SCRIPT', '2': 0},
    const {'1': 'MODULE', '2': 1},
    const {'1': 'DEPENDENCY', '2': 2},
  ],
};

const Aborted$json = const {
  '1': 'Aborted',
  '2': const [
    const {'1': 'aborted_error_code', '3': 1, '4': 1, '5': 4, '10': 'abortedErrorCode'},
  ],
};

const ArithmeticError$json = const {
  '1': 'ArithmeticError',
  '2': const [
    const {'1': 'error_code', '3': 1, '4': 1, '5': 14, '6': '.types.ArithmeticError.ArithmeticErrorType', '10': 'errorCode'},
  ],
  '4': const [ArithmeticError_ArithmeticErrorType$json],
};

const ArithmeticError_ArithmeticErrorType$json = const {
  '1': 'ArithmeticErrorType',
  '2': const [
    const {'1': 'UnknownArithmeticError', '2': 0},
    const {'1': 'Underflow', '2': 1},
    const {'1': 'Overflow', '2': 2},
    const {'1': 'DivisionByZero', '2': 3},
  ],
};

const DynamicReferenceError$json = const {
  '1': 'DynamicReferenceError',
  '2': const [
    const {'1': 'error_code', '3': 1, '4': 1, '5': 14, '6': '.types.DynamicReferenceError.DynamicReferenceErrorType', '10': 'errorCode'},
  ],
  '4': const [DynamicReferenceError_DynamicReferenceErrorType$json],
};

const DynamicReferenceError_DynamicReferenceErrorType$json = const {
  '1': 'DynamicReferenceErrorType',
  '2': const [
    const {'1': 'UnknownDynamicReferenceError', '2': 0},
    const {'1': 'MoveOfBorrowedResource', '2': 1},
    const {'1': 'GlobalRefAlreadyReleased', '2': 2},
    const {'1': 'MissingReleaseRef', '2': 3},
    const {'1': 'GlobalAlreadyBorrowed', '2': 4},
  ],
};

const ExecutionStatus$json = const {
  '1': 'ExecutionStatus',
  '2': const [
    const {'1': 'runtime_status', '3': 1, '4': 1, '5': 14, '6': '.types.RuntimeStatus', '9': 0, '10': 'runtimeStatus'},
    const {'1': 'aborted', '3': 2, '4': 1, '5': 11, '6': '.types.Aborted', '9': 0, '10': 'aborted'},
    const {'1': 'arithmetic_error', '3': 3, '4': 1, '5': 11, '6': '.types.ArithmeticError', '9': 0, '10': 'arithmeticError'},
    const {'1': 'reference_error', '3': 4, '4': 1, '5': 11, '6': '.types.DynamicReferenceError', '9': 0, '10': 'referenceError'},
  ],
  '8': const [
    const {'1': 'execution_status'},
  ],
};

const VMStatus$json = const {
  '1': 'VMStatus',
  '2': const [
    const {'1': 'validation', '3': 1, '4': 1, '5': 11, '6': '.types.VMValidationStatus', '9': 0, '10': 'validation'},
    const {'1': 'verification', '3': 2, '4': 1, '5': 11, '6': '.types.VMVerificationStatusList', '9': 0, '10': 'verification'},
    const {'1': 'invariant_violation', '3': 3, '4': 1, '5': 14, '6': '.types.VMInvariantViolationError', '9': 0, '10': 'invariantViolation'},
    const {'1': 'deserialization', '3': 4, '4': 1, '5': 14, '6': '.types.BinaryError', '9': 0, '10': 'deserialization'},
    const {'1': 'execution', '3': 5, '4': 1, '5': 11, '6': '.types.ExecutionStatus', '9': 0, '10': 'execution'},
  ],
  '8': const [
    const {'1': 'error_type'},
  ],
};

