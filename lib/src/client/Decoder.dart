import 'dart:typed_data';
import 'package:flutter_libra_core/src/CursorBuffer.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:flutter_libra_core/src/common/simple_deserializer.dart';
import 'package:flutter_libra_core/src/wallet/Accounts.dart';
import 'package:flutter_libra_core/src/transaction/index.dart';
import 'package:flutter_libra_core/__generated__/proto/transaction.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/events.pb.dart';
import 'package:flutter_libra_core/src/wallet/Event.dart';

class ClientDecoder {
  static LibraAccountState decodeAccountStateBlob(ByteBuffer buffer) {
    CursorBuffer cursor = new CursorBuffer(buffer);
    int blobLen = cursor.read32();
    for (int i = 0; i < blobLen; i++) {
      int keyLen = cursor.read32();
      Uint8List key = cursor.readXBytes(keyLen);
      int valLen = cursor.read32();
      int addressLen = cursor.read32();
      Uint8List address = cursor.readXBytes(addressLen);
      int balance = cursor.read64();
      bool delegatedWithdrawalCapability = cursor.readBool();
      bool delegatedKeyRotationCapability = cursor.readBool();
      int receivedEventsCount = cursor.read32();
      cursor.read32();
      int receivedEventsKeyLen = cursor.read32();
      Uint8List receivedEventsKey = cursor.readXBytes(receivedEventsKeyLen);
      int sentEventsCount = cursor.read32();
      cursor.read32();
      int sentEventsKeyLen = cursor.read32();
      Uint8List sentEventsKey = cursor.readXBytes(sentEventsKeyLen);
      int sequenceNumber = cursor.read32();
      return new LibraAccountState(address,
          balance: BigInt.from(balance),
          receivedEvents: new EventHandle(
              receivedEventsKey, BigInt.from(receivedEventsCount)),
          sentEvents:
              new EventHandle(sentEventsKey, BigInt.from(sentEventsCount)),
          sequenceNumber: BigInt.from(sequenceNumber),
          delegatedWithdrawalCapability: delegatedWithdrawalCapability,
          delegatedKeyRotationCapability: delegatedKeyRotationCapability);
    }
    return null;
  }

  static LibraSignedTransactionWithProof decodeSignedTransactionWithProof(
      SignedTransactionWithProof signedTransactionWP) {
    // decode transaction
    SignedTransaction signedTransaction = signedTransactionWP.signedTransaction;
    var deserializer = new SimpleDeserializer(Uint8List.fromList(signedTransaction.signedTxn));
    var rawSignedTransaction = deserializer.decodeObject(new RawSignedTransaction());

    var txn = rawSignedTransaction.rawTxn;
    Program program = txn.payload.value;
    List<LibraProgramArgument> arguments = [];
    program.arguments.forEach((argument) {
      Uint8List value;
      if (argument.type == TransactionArgument_ArgType.U64) {
        value = LibraHelpers.bigIntToFixLengthBytes(BigInt.from(argument.u64Value), 64, le: true);
      } else {
        value = argument.byteValue;
      }
      arguments.add(new LibraProgramArgument(argument.type, value));
    });
    var libraTxn = new LibraTransaction(
      new LibraProgram(program.code, program.modules, arguments),
      new LibraGasConstraint(BigInt.from(txn.gasUnitPrice), BigInt.from(txn.maxGasAmount)),
      txn.expirationTime,
      BigInt.from(txn.sequenceNumber),
    );
    var libraSignedTransaction = new LibraSignedTransaction(
      libraTxn, rawSignedTransaction.publicKey, rawSignedTransaction.signature);

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
    return new LibraSignedTransactionWithProof(libraSignedTransaction,
        proof: signedTransactionWP.proof, events: eventsList);
  }
/*
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
  */
}
