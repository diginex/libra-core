import 'dart:typed_data';
import 'package:flutter_libra_core/src/CursorBuffer.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:flutter_libra_core/src/wallet/Accounts.dart';
import 'package:flutter_libra_core/src/Constants.dart';
import 'package:flutter_libra_core/src/transaction/index.dart';
import 'package:flutter_libra_core/__generated__/proto/vm_errors.pbenum.dart';
import 'package:flutter_libra_core/__generated__/proto/vm_errors.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/transaction.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/events.pb.dart';
import 'package:flutter_libra_core/src/wallet/Event.dart';

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
      int receivedEventsCount = cursor.read64();
      int receivedEventsKeyLen = cursor.read32();
      Uint8List receivedEventsKey = cursor.readXBytes(receivedEventsKeyLen);
      int sentEventsCount = cursor.read64();
      int sentEventsKeyLen = cursor.read32();
      Uint8List sentEventsKey = cursor.readXBytes(sentEventsKeyLen);
      int sequenceNumber = cursor.read64();
      state[LibraHelpers.byteToHex(key)] = new LibraAccountState(address,
          balance: BigInt.from(balance),
          receivedEvents: new EventHandle(receivedEventsKey, BigInt.from(receivedEventsCount)),
          sentEvents: new EventHandle(sentEventsKey, BigInt.from(sentEventsCount)),
          sequenceNumber: BigInt.from(sequenceNumber),
          delegatedWithdrawalCapability: delegatedWithdrawalCapability);
    }
    return state[PathValues.AccountStatePath];
  }

  static LibraSignedTransactionWithProof decodeSignedTransactionWithProof(
      SignedTransactionWithProof signedTransactionWP) {
    // decode transaction
    SignedTransaction signedTransaction = signedTransactionWP.signedTransaction;
    LibraTransaction libraTransaction = decodeRawTransactionBytes(
        Uint8List.fromList(signedTransaction.rawTxnBytes));
    LibraSignedTransaction libraSignedtransaction = new LibraSignedTransaction(
        libraTransaction,
        Uint8List.fromList(signedTransaction.senderPublicKey),
        Uint8List.fromList(signedTransaction.senderSignature));

    // decode event
    List<LibraTransactionEvent> eventsList = [];
    if (signedTransactionWP.hasEvents()) {
      EventsList list = signedTransactionWP.events;
      list.events.forEach((event) {
        eventsList.add(new LibraTransactionEvent(
            Uint8List.fromList(event.eventData),
            BigInt.from(event.sequenceNumber.toInt()),
            eventKey: event.key));
      });
    }
    return new LibraSignedTransactionWithProof(libraSignedtransaction,
        proof: signedTransactionWP.proof, events: eventsList);
  }

  static LibraTransaction decodeRawTransactionBytes(Uint8List rawTxnBytes) {
    RawTransaction rawTxn = RawTransaction.fromBuffer(rawTxnBytes);
    Program rawProgram = rawTxn.program;
    List<LibraProgramArgument> arguments = [];
    rawProgram.arguments.forEach((argument) {
      arguments.add(new LibraProgramArgument(
          argument.type, Uint8List.fromList(argument.data)));
    });
    List<Uint8List> modules = [];
    rawProgram.modules.forEach((module) {
      modules.add(Uint8List.fromList(module));
    });
    LibraProgram program = new LibraProgram(
        Uint8List.fromList(rawProgram.code), arguments, modules);

    LibraGasConstraint gasContraint = new LibraGasConstraint(
        BigInt.from(rawTxn.gasUnitPrice.toInt()),
        BigInt.from(rawTxn.maxGasAmount.toInt()));

    return new LibraTransaction(
      program,
      gasContraint,
      rawTxn.expirationTime.toInt(),
      Uint8List.fromList(rawTxn.senderAccount),
      BigInt.from(rawTxn.sequenceNumber.toInt()),
    );
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
      } else if (status.hasAborted()) {
        executionError =
            new LibraExecutionError(LibraExecutionErrorType.ABORTED_FAILURE);
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
