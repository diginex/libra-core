import 'package:fixnum/fixnum.dart';
import 'package:flutter_libra_core/src/common/simple_deserializer.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:hex/hex.dart';
import 'package:flutter_libra_core/src/Constants.dart';
import 'package:flutter_libra_core/src/LibraHelpers.dart';
import 'package:flutter_libra_core/src/common/simple_serializer.dart';
import 'package:flutter_libra_core/__generated__/proto/transaction.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/proof.pb.dart';
import 'package:flutter_libra_core/__generated__/proto/admission_control.pbenum.dart';
import 'package:flutter_libra_core/__generated__/proto/mempool_status.pbenum.dart';
import 'package:flutter_libra_core/__generated__/proto/vm_errors.pb.dart';

class RawSignedTransaction
    implements CanonicalSerializable, CanonicalDeserializable {
  RawTransaction rawTxn;
  Uint8List publicKey;
  Uint8List signature;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer
        .encodeObject(this.rawTxn)
        .encodeBytes(this.publicKey)
        .encodeBytes(this.signature);
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    this.rawTxn = deserializer.decodeObject(new RawTransaction());
    this.publicKey = deserializer.decodeBytes();
    this.signature = deserializer.decodeBytes();
  }
}

class TransactionArgument
    implements CanonicalSerializable, CanonicalDeserializable {
  TransactionArgument_ArgType type;
  Uint8List byteValue;
  int u64Value;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer.encodeUint32(this.type.value);
    if (this.type.value == TransactionArgument_ArgType.U64.value) {
      serializer.encodeUint64(this.u64Value);
    } else {
      serializer.encodeBytes(this.byteValue);
    }
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    int value = deserializer.decodeUint32();
    if (value == TransactionArgument_ArgType.U64.value) {
      this.type = TransactionArgument_ArgType.U64;
      this.u64Value = deserializer.decodeUint64();
    } else {
      if (value == TransactionArgument_ArgType.ADDRESS.value) {
        this.type = TransactionArgument_ArgType.ADDRESS;
      } else if (value == TransactionArgument_ArgType.STRING.value) {
        this.type = TransactionArgument_ArgType.STRING;
      } else {
        this.type = TransactionArgument_ArgType.BYTEARRAY;
      }
      this.byteValue = deserializer.decodeBytes();
    }
  }
}

class Program implements CanonicalSerializable, CanonicalDeserializable {
  Uint8List code;
  List<TransactionArgument> arguments;
  List<Uint8List> modules;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer.encodeBytes(this.code);
    serializer.encodeUint32(this.arguments.length);
    this.arguments.forEach((arg) {
      serializer.encodeObject(arg);
    });
    serializer.encodeUint32(this.modules.length);
    this.modules.forEach((module) {
      serializer.encodeBytes(module);
    });
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    this.code = deserializer.decodeBytes();
    int length = deserializer.decodeUint32();
    this.arguments = [];
    for (int i = 0; i < length; i++) {
      this.arguments.add(deserializer.decodeObject(new TransactionArgument()));
    }
    length = deserializer.decodeUint32();
    this.modules = [];
    for (int i = 0; i < length; i++) {
      this.modules.add(deserializer.decodeBytes());
    }
  }
}

class AccessPath implements CanonicalSerializable, CanonicalDeserializable {
  Uint8List address;
  Uint8List path;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer.encodeBytes(this.address).encodeBytes(this.path);
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    this.address = deserializer.decodeBytes();
    this.path = deserializer.decodeBytes();
  }
}

enum WriteOpType { Deletion, Value }

class WriteOp implements CanonicalSerializable, CanonicalDeserializable {
  WriteOpType type;
  Uint8List value;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer.encodeUint32(this.type.index);
    if (this.type.index == WriteOpType.Value.index) {
      serializer.encodeBytes(this.value);
    }
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    int value = deserializer.decodeUint32();
    if (value == WriteOpType.Value.index) {
      this.value = deserializer.decodeBytes();
    }
  }
}

class AccessPathWIthWriteOp {
  AccessPath path;
  WriteOp op;
}

class WriteSet implements CanonicalSerializable, CanonicalDeserializable {
  List<AccessPathWIthWriteOp> writeSet;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer.encodeUint32(this.writeSet.length);
    this.writeSet.forEach((w) {
      serializer.encodeObject(w.path);
      serializer.encodeObject(w.op);
    });
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    int length = deserializer.decodeUint32();
    this.writeSet = [];
    for (int i = 0; i < length; i++) {
      AccessPathWIthWriteOp accessPathWIthWriteOp = new AccessPathWIthWriteOp();
      accessPathWIthWriteOp.path = deserializer.decodeObject(new AccessPath());
      accessPathWIthWriteOp.op = deserializer.decodeObject(new WriteOp());
      this.writeSet.add(accessPathWIthWriteOp);
    }
  }
}

class Script implements CanonicalSerializable, CanonicalDeserializable {
  Uint8List code;
  List<TransactionArgument> arguments;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer.encodeBytes(this.code);
    serializer.encodeUint32(this.arguments.length);
    this.arguments.forEach((arg) {
      serializer.encodeObject(arg);
    });
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    this.code = deserializer.decodeBytes();
    int length = deserializer.decodeUint32();
    this.arguments = [];
    for (int i = 0; i < length; i++) {
      this.arguments.add(deserializer.decodeObject(new TransactionArgument()));
    }
  }
}

class Module implements CanonicalSerializable, CanonicalDeserializable {
  Uint8List code;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer.encodeBytes(this.code);
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    this.code = deserializer.decodeBytes();
  }
}

enum TransactionPayloadType { Program, WriteSet, Script, Module }

class TransactionPayload implements CanonicalSerializable, CanonicalDeserializable {
  TransactionPayloadType type;
  dynamic value;

  TransactionPayload(CanonicalSerializable value) {
    if (value is Program) {
      this.type = TransactionPayloadType.Program;
    } else if (value is WriteSet) {
      this.type = TransactionPayloadType.WriteSet;
    } else if (value is Script) {
      this.type = TransactionPayloadType.Script;
    } else {
      this.type = TransactionPayloadType.Module;
    }
    this.value = value;
  }

  @override
  void serialize(SimpleSerializer serializer) {
    serializer.encodeUint32(this.type.index).encodeObject(this.value);
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    int type = deserializer.decodeUint32();
    if (type == TransactionPayloadType.Program.index) {
      this.type = TransactionPayloadType.Program;
      this.value = deserializer.decodeObject(new Program());
    } else if (type == TransactionPayloadType.WriteSet.index) {
      this.type = TransactionPayloadType.WriteSet;
      this.value = deserializer.decodeObject(new Script());
    } else if (type == TransactionPayloadType.Script.index) {
      this.type = TransactionPayloadType.Script;
      this.value = deserializer.decodeObject(new Script());
    } else {
      this.type = TransactionPayloadType.Module;
      this.value = deserializer.decodeObject(new Module());
    }
  }
}

class RawTransaction implements CanonicalSerializable, CanonicalDeserializable {
  Uint8List senderAccount;
  int sequenceNumber;
  TransactionPayload payload;
  int maxGasAmount;
  int gasUnitPrice;
  int expirationTime;

  @override
  void serialize(SimpleSerializer serializer) {
    serializer
        .encodeBytes(this.senderAccount)
        .encodeUint64(this.sequenceNumber);
    serializer.encodeObject(this.payload);
    serializer.encodeUint64(this.maxGasAmount);
    serializer
        .encodeUint64(this.gasUnitPrice)
        .encodeUint64(this.expirationTime);
  }

  @override
  void deserialize(SimpleDeserializer deserializer) {
    this.senderAccount = deserializer.decodeBytes();
    this.sequenceNumber = deserializer.decodeUint64();
    this.payload = deserializer
        .decodeObject(new TransactionPayload(new Program()));
    this.maxGasAmount = deserializer.decodeUint64();
    this.gasUnitPrice = deserializer.decodeUint64();
    this.expirationTime = deserializer.decodeUint64();
  }
}

class LibraProgramArgument {
  TransactionArgument_ArgType type;
  Uint8List value;
  LibraProgramArgument(this.type, this.value);
}

class LibraProgram {
  Uint8List code;
  List<Uint8List> modules;
  List<LibraProgramArgument> arguments;
  LibraProgram(this.code, this.modules, this.arguments);
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
  BigInt sequenceNumber;
  LibraTransaction(this.program, this.gasContraint, this.expirationTime,
      this.sequenceNumber);

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
    LibraProgram libraProgram = new LibraProgram(code, [], programArguments);
    LibraGasConstraint gas =
        new LibraGasConstraint(BigInt.zero, BigInt.from(1000000));
    int expirationTime =
        (new DateTime.now().millisecondsSinceEpoch ~/ 1000).floor() + 100;
    return new LibraTransaction(
      libraProgram,
      gas,
      expirationTime,
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
  RawSignedTransaction signedTransaction;
  List<int> validatorId;
  AdmissionControlStatusCode acStatus;
  MempoolAddTransactionStatusCode mempoolStatus;
  VMStatus vmStatus;

  LibraTransactionResponse(this.signedTransaction, this.validatorId,
      {AdmissionControlStatusCode acStatus,
      MempoolAddTransactionStatusCode mempoolStatus,
      VMStatus vmStatus}) {
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

/*
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

  Future<void> awaitConfirmation(LibraClient client) {
    return client.waitForConfirmation(
      this.signedTransaction.transaction.senderAddress,
      this.signedTransaction.transaction.sequenceNumber++,
    );
  }
  */
}
