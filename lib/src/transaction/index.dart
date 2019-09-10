import 'package:fixnum/fixnum.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:hex/hex.dart';
import 'package:flutter_libra_core/src/Constants.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:flutter_libra_core/__generated__/proto/transaction.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/proof.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/admission_control.pbenum.dart';
import 'package:flutter_libra_core/__generated__/proto/mempool_status.pbenum.dart';
import 'package:flutter_libra_core/__generated__/proto/vm_errors.pbenum.dart';
import 'package:flutter_libra_core/__generated__/proto/vm_errors.pb.dart';

class LibraProgramArgument {
  TransactionArgument_ArgType type;
  Uint8List value;
  LibraProgramArgument(this.type, this.value);
}

class LibraProgram {
  Uint8List code;
  List<LibraProgramArgument> arguments;
  List<Uint8List> modules;
  LibraProgram(this.code, this.arguments, this.modules);
}

class LibraGasConstraint {
  BigInt maxGasAmount;
  BigInt gasUnitPrice;
  LibraGasConstraint(this.gasUnitPrice, this.maxGasAmount);
}

class LibraTransaction {
  LibraProgram program;
  LibraGasConstraint gasContraint;
  int expirationTime;
  Uint8List senderAddress;
  BigInt sequenceNumber;
  LibraTransaction(this.program, this.gasContraint, this.expirationTime,
      this.senderAddress, this.sequenceNumber);

  static LibraTransaction createTransfer(
      String recipientAddress, BigInt amount, BigInt sequenceNumber) {
    Uint8List amountBuffer =
        LibraHelpers.bigIntToFixLengthBytes(amount, 8, le: true);
    List<LibraProgramArgument> programArguments = [
      new LibraProgramArgument(
          TransactionArgument_ArgType.ADDRESS, HEX.decode(recipientAddress)),
      new LibraProgramArgument(TransactionArgument_ArgType.U64, amountBuffer),
    ];
    Uint8List code = base64.decode(ProgamBase64Codes.PeerToPeerTxn);
    LibraProgram libraProgram = new LibraProgram(code, programArguments, []);
    LibraGasConstraint gas =
        new LibraGasConstraint(BigInt.zero, BigInt.from(1000000));
    int expirationTime =
        (new DateTime.now().millisecondsSinceEpoch ~/ 1000).floor() + 100;
    return new LibraTransaction(
      libraProgram,
      gas,
      expirationTime,
      new Uint8List(AddressLength),
      sequenceNumber,
    );
  }
}

class LibraRawTransaction {
  Int64 version;
  Int64 expirationTime;
  String publicKey;
  String senderAddress;
  String senderSignature;
  String recipientAddress;
  String type;
  String amount;
  Int64 gasUnitPrice;
  Int64 maxGasAmount;
  Int64 sequenceNumber;
  Int64 gasUsed;
  String signedTransactionHash;
  String stateRootHash;
  String eventRootHash;
  String codeHex;
  Program program;

  LibraRawTransaction(
      this.version,
      this.expirationTime,
      this.publicKey,
      this.senderAddress,
      this.senderSignature,
      this.recipientAddress,
      this.type,
      this.amount,
      this.gasUnitPrice,
      this.maxGasAmount,
      this.sequenceNumber,
      this.gasUsed,
      this.signedTransactionHash,
      this.stateRootHash,
      this.eventRootHash,
      this.codeHex,
      this.program);
}

class LibraSignedTransaction {
  LibraTransaction transaction;
  Uint8List publicKey;
  Uint8List signature;
  LibraSignedTransaction(this.transaction, this.publicKey, this.signature);
}

class LibraTransactionResponse {
  SignedTransaction signedTransaction;
  List<int> validatorId;
  AdmissionControlStatusCode acStatus;
  MempoolAddTransactionStatusCode mempoolStatus;
  LibraVMStatusError vmStatus;

  LibraTransactionResponse(this.signedTransaction, this.validatorId,
      {AdmissionControlStatusCode acStatus,
      MempoolAddTransactionStatusCode mempoolStatus,
      LibraVMStatusError vmStatus}) {
    if (acStatus != null) {
      this.acStatus = acStatus;
    }
    if (mempoolStatus != null) {
      this.mempoolStatus = mempoolStatus;
    }
    if (vmStatus != null) {
      this.vmStatus = vmStatus;
    }
  }
}

class LibraTransactionEvent {
  Uint8List data, eventKey;
  BigInt sequenceNumber;
  String address;

  LibraTransactionEvent(this.data, this.sequenceNumber,
      {String address, Uint8List eventKey}) {
    if (address != null) {
      this.address = address;
    }
    if (eventKey != null) {
      this.eventKey = eventKey;
    }
  }
}

class LibraSignedTransactionWithProof {
  LibraSignedTransaction signedTransaction;
  SignedTransactionProof proof;
  List<LibraTransactionEvent> events;

  LibraSignedTransactionWithProof(this.signedTransaction,
      {SignedTransactionProof proof, List<LibraTransactionEvent> events}) {
    if (proof != null) {
      this.proof = proof;
    }
    if (events != null) {
      this.events = events;
    }
  }
}

class LibraVerificationStatusError {
  int moduleIndex;
  VMVerificationErrorKind error;
  String message;

  LibraVerificationStatusError(this.moduleIndex, this.error, this.message);
}

class LibraValidationStatusError {
  VMValidationStatusCode code;
  String message;

  LibraValidationStatusError(this.code, this.message);
}

class LibraExecutionError {
  LibraExecutionErrorType errorType;
  LibraExecutionError(this.errorType);
}

enum LibraExecutionErrorType {
  EXECUTIONSTATUS_NOT_SET,
  RUNTIME_STATUS,
  ABORTED_FAILURE,
  ARITHMETIC_ERROR,
  REFERENCE_ERROR,
}

class LibraVMStatusError {
  VMStatus_ErrorType errorType;
  LibraValidationStatusError validationStatusError;
  List<LibraVerificationStatusError> verificationStatusErrors;
  VMInvariantViolationError invariantViolationError;
  BinaryError deserializationError;
  LibraExecutionError executionError;

  LibraVMStatusError(VMStatus_ErrorType errorType,
      {List<LibraVerificationStatusError> verificationStatusErrors,
      LibraValidationStatusError validationStatus,
      VMInvariantViolationError invariantViolationError,
      BinaryError deserializationError,
      LibraExecutionError executionError}) {
    this.errorType = errorType;
    this.verificationStatusErrors = verificationStatusErrors;
    this.validationStatusError = validationStatus;
    this.invariantViolationError = invariantViolationError;
    this.deserializationError = deserializationError;
    this.executionError = executionError;
  }

  /*
  Future<void> awaitConfirmation(LibraClient client) {
    return client.waitForConfirmation(
      this.signedTransaction.transaction.senderAddress,
      this.signedTransaction.transaction.sequenceNumber++,
    );
  }
  */
}
