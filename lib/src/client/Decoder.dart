import 'dart:typed_data';
import 'package:flutter_libra_core/src/CursorBuffer.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:flutter_libra_core/src/wallet/Accounts.dart';
import 'package:flutter_libra_core/src/Constants.dart';
import 'package:flutter_libra_core/src/transaction/index.dart';
import 'package:flutter_libra_core/__generated__/proto/vm_errors.pbenum.dart';
import 'package:flutter_libra_core/__generated__/proto/vm_errors.pb.dart';

class ClientDecoder {
  static LibraAccountState decodeAccountStateBlob(ByteBuffer buffer) {
    CursorBuffer cursor = new CursorBuffer(buffer);
    int blobLen = cursor.read32();
    Map state = new Map();

    for (int i = 0; i < blobLen; i++) {
      int keyLen = cursor.read32();
      Uint8List key = cursor.readXBytes(keyLen);
      int valLen = cursor.read32();
      int addressLen = cursor.read32();
      Uint8List address = cursor.readXBytes(addressLen);
      int balance = cursor.read64();
      bool delegatedWithdrawalCapability = cursor.read8() != 0;
      int receivedEvents = cursor.read64();
      int sentEvents = cursor.read64();
      int sequenceNumber = cursor.read64();
      state[LibraHelpers.byteToHex(key)] = LibraAccountState(
          address,
          balance,
          receivedEvents,
          sentEvents,
          sequenceNumber,
          delegatedWithdrawalCapability);
    }
    // TO CHECK
    return state[PathValues.AccountStatePath];
  }

  static LibraVMStatusError decodeVMStatus(VMStatus vmStatus) {
    VMStatus_ErrorType errorType = vmStatus.whichErrorType();
    LibraValidationStatusError validationStatus;
    List<LibraVerificationStatusError> verificationStatusErrors;
    VMInvariantViolationError invariantViolationError;
    BinaryError deserializationError;
    LibraExecutionError executionError;

    if (vmStatus.hasValidation()) {
      VMValidationStatus validation = vmStatus.validation;
      validationStatus =
          new LibraValidationStatusError(validation.code, validation.message);
    }

    if (vmStatus.hasVerification()) {
      VMVerificationStatusList verification = vmStatus.verification;
      verification.statusList.forEach((status) {
        verificationStatusErrors.add(LibraVerificationStatusError(
            status.moduleIdx, status.errorKind, status.message));
      });
    }

    if (vmStatus.hasInvariantViolation()) {
      invariantViolationError = vmStatus.invariantViolation;
    }

    if (vmStatus.hasDeserialization()) {
      deserializationError = vmStatus.deserialization;
    }

    if (vmStatus.hasExecution()) {
      ExecutionStatus status = vmStatus.execution;
      if (status.hasRuntimeStatus()) {
        executionError =
            new LibraExecutionError(LibraExecutionErrorType.RUNTIME_STATUS);
      } else if (status.hasAssertionFailure()) {
        executionError =
            new LibraExecutionError(LibraExecutionErrorType.ASSERTION_FAILURE);
      } else if (status.hasArithmeticError()) {
        executionError =
            new LibraExecutionError(LibraExecutionErrorType.ARITHMETIC_ERROR);
      } else if (status.hasReferenceError()) {
        executionError =
            new LibraExecutionError(LibraExecutionErrorType.REFERENCE_ERROR);
      } else {
        executionError = new LibraExecutionError(
            LibraExecutionErrorType.EXECUTIONSTATUS_NOT_SET);
      }
    }
    return new LibraVMStatusError(errorType,
        verificationStatusErrors: verificationStatusErrors,
        validationStatus: validationStatus,
        invariantViolationError: invariantViolationError,
        deserializationError: deserializationError,
        executionError: executionError);
  }
}
