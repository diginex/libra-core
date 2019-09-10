///
//  Generated code. Do not modify.
//  source: proto/transaction.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'proof.pb.dart' as $4;
import 'events.pb.dart' as $5;
import 'access_path.pb.dart' as $6;
import 'transaction_info.pb.dart' as $3;
import 'wrappers.pb.dart' as $7;

import 'transaction.pbenum.dart';

export 'transaction.pbenum.dart';

enum RawTransaction_Payload {
  program, 
  writeSet, 
  script, 
  module, 
  notSet
}

class RawTransaction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RawTransaction_Payload> _RawTransaction_PayloadByTag = {
    3 : RawTransaction_Payload.program,
    4 : RawTransaction_Payload.writeSet,
    8 : RawTransaction_Payload.script,
    9 : RawTransaction_Payload.module,
    0 : RawTransaction_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RawTransaction', package: const $pb.PackageName('types'))
    ..oo(0, [3, 4, 8, 9])
    ..a<$core.List<$core.int>>(1, 'senderAccount', $pb.PbFieldType.OY)
    ..a<Int64>(2, 'sequenceNumber', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Program>(3, 'program', $pb.PbFieldType.OM, Program.getDefault, Program.create)
    ..a<WriteSet>(4, 'writeSet', $pb.PbFieldType.OM, WriteSet.getDefault, WriteSet.create)
    ..a<Int64>(5, 'maxGasAmount', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Int64>(6, 'gasUnitPrice', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Int64>(7, 'expirationTime', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Script>(8, 'script', $pb.PbFieldType.OM, Script.getDefault, Script.create)
    ..a<Module>(9, 'module', $pb.PbFieldType.OM, Module.getDefault, Module.create)
    ..hasRequiredFields = false
  ;

  RawTransaction._() : super();
  factory RawTransaction() => create();
  factory RawTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RawTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RawTransaction clone() => RawTransaction()..mergeFromMessage(this);
  RawTransaction copyWith(void Function(RawTransaction) updates) => super.copyWith((message) => updates(message as RawTransaction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RawTransaction create() => RawTransaction._();
  RawTransaction createEmptyInstance() => create();
  static $pb.PbList<RawTransaction> createRepeated() => $pb.PbList<RawTransaction>();
  static RawTransaction getDefault() => _defaultInstance ??= create()..freeze();
  static RawTransaction _defaultInstance;

  RawTransaction_Payload whichPayload() => _RawTransaction_PayloadByTag[$_whichOneof(0)];
  void clearPayload() => clearField($_whichOneof(0));

  $core.List<$core.int> get senderAccount => $_getN(0);
  set senderAccount($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSenderAccount() => $_has(0);
  void clearSenderAccount() => clearField(1);

  Int64 get sequenceNumber => $_getI64(1);
  set sequenceNumber(Int64 v) { if (v != 0) $_setInt64(1, v); } // don't set if 0
  $core.bool hasSequenceNumber() => $_has(1);
  void clearSequenceNumber() => clearField(2);

  Program get program => $_getN(2);
  set program(Program v) { setField(3, v); }
  $core.bool hasProgram() => $_has(2);
  void clearProgram() => clearField(3);

  WriteSet get writeSet => $_getN(3);
  set writeSet(WriteSet v) { setField(4, v); }
  $core.bool hasWriteSet() => $_has(3);
  void clearWriteSet() => clearField(4);

  Int64 get maxGasAmount => $_getI64(4);
  set maxGasAmount(Int64 v) { if (v != 0) $_setInt64(4, v); } // don't set if 0
  $core.bool hasMaxGasAmount() => $_has(4);
  void clearMaxGasAmount() => clearField(5);

  Int64 get gasUnitPrice => $_getI64(5);
  set gasUnitPrice(Int64 v) { if (v != 0) $_setInt64(5, v); } // don't set if 0
  $core.bool hasGasUnitPrice() => $_has(5);
  void clearGasUnitPrice() => clearField(6);

  Int64 get expirationTime => $_getI64(6);
  set expirationTime(Int64 v) { if (v != 0) $_setInt64(6, v); } // don't set if 0
  $core.bool hasExpirationTime() => $_has(6);
  void clearExpirationTime() => clearField(7);

  Script get script => $_getN(7);
  set script(Script v) { setField(8, v); }
  $core.bool hasScript() => $_has(7);
  void clearScript() => clearField(8);

  Module get module => $_getN(8);
  set module(Module v) { setField(9, v); }
  $core.bool hasModule() => $_has(8);
  void clearModule() => clearField(9);
}

class Program extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Program', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'code', $pb.PbFieldType.OY)
    ..pc<TransactionArgument>(2, 'arguments', $pb.PbFieldType.PM,TransactionArgument.create)
    ..p<$core.List<$core.int>>(3, 'modules', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  Program._() : super();
  factory Program() => create();
  factory Program.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Program.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Program clone() => Program()..mergeFromMessage(this);
  Program copyWith(void Function(Program) updates) => super.copyWith((message) => updates(message as Program));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Program create() => Program._();
  Program createEmptyInstance() => create();
  static $pb.PbList<Program> createRepeated() => $pb.PbList<Program>();
  static Program getDefault() => _defaultInstance ??= create()..freeze();
  static Program _defaultInstance;

  $core.List<$core.int> get code => $_getN(0);
  set code($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  $core.List<TransactionArgument> get arguments => $_getList(1);

  $core.List<$core.List<$core.int>> get modules => $_getList(2);
}

class Script extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Script', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'code', $pb.PbFieldType.OY)
    ..pc<TransactionArgument>(2, 'arguments', $pb.PbFieldType.PM,TransactionArgument.create)
    ..hasRequiredFields = false
  ;

  Script._() : super();
  factory Script() => create();
  factory Script.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Script.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Script clone() => Script()..mergeFromMessage(this);
  Script copyWith(void Function(Script) updates) => super.copyWith((message) => updates(message as Script));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Script create() => Script._();
  Script createEmptyInstance() => create();
  static $pb.PbList<Script> createRepeated() => $pb.PbList<Script>();
  static Script getDefault() => _defaultInstance ??= create()..freeze();
  static Script _defaultInstance;

  $core.List<$core.int> get code => $_getN(0);
  set code($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  $core.List<TransactionArgument> get arguments => $_getList(1);
}

class TransactionArgument extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionArgument', package: const $pb.PackageName('types'))
    ..e<TransactionArgument_ArgType>(1, 'type', $pb.PbFieldType.OE, TransactionArgument_ArgType.U64, TransactionArgument_ArgType.valueOf, TransactionArgument_ArgType.values)
    ..a<$core.List<$core.int>>(2, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TransactionArgument._() : super();
  factory TransactionArgument() => create();
  factory TransactionArgument.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionArgument.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransactionArgument clone() => TransactionArgument()..mergeFromMessage(this);
  TransactionArgument copyWith(void Function(TransactionArgument) updates) => super.copyWith((message) => updates(message as TransactionArgument));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionArgument create() => TransactionArgument._();
  TransactionArgument createEmptyInstance() => create();
  static $pb.PbList<TransactionArgument> createRepeated() => $pb.PbList<TransactionArgument>();
  static TransactionArgument getDefault() => _defaultInstance ??= create()..freeze();
  static TransactionArgument _defaultInstance;

  TransactionArgument_ArgType get type => $_getN(0);
  set type(TransactionArgument_ArgType v) { setField(1, v); }
  $core.bool hasType() => $_has(0);
  void clearType() => clearField(1);

  $core.List<$core.int> get data => $_getN(1);
  set data($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasData() => $_has(1);
  void clearData() => clearField(2);
}

class Module extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Module', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'code', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Module._() : super();
  factory Module() => create();
  factory Module.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Module.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Module clone() => Module()..mergeFromMessage(this);
  Module copyWith(void Function(Module) updates) => super.copyWith((message) => updates(message as Module));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Module create() => Module._();
  Module createEmptyInstance() => create();
  static $pb.PbList<Module> createRepeated() => $pb.PbList<Module>();
  static Module getDefault() => _defaultInstance ??= create()..freeze();
  static Module _defaultInstance;

  $core.List<$core.int> get code => $_getN(0);
  set code($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);
}

class SignedTransaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignedTransaction', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'rawTxnBytes', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'senderPublicKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'senderSignature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignedTransaction._() : super();
  factory SignedTransaction() => create();
  factory SignedTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignedTransaction clone() => SignedTransaction()..mergeFromMessage(this);
  SignedTransaction copyWith(void Function(SignedTransaction) updates) => super.copyWith((message) => updates(message as SignedTransaction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignedTransaction create() => SignedTransaction._();
  SignedTransaction createEmptyInstance() => create();
  static $pb.PbList<SignedTransaction> createRepeated() => $pb.PbList<SignedTransaction>();
  static SignedTransaction getDefault() => _defaultInstance ??= create()..freeze();
  static SignedTransaction _defaultInstance;

  $core.List<$core.int> get rawTxnBytes => $_getN(0);
  set rawTxnBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasRawTxnBytes() => $_has(0);
  void clearRawTxnBytes() => clearField(1);

  $core.List<$core.int> get senderPublicKey => $_getN(1);
  set senderPublicKey($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasSenderPublicKey() => $_has(1);
  void clearSenderPublicKey() => clearField(2);

  $core.List<$core.int> get senderSignature => $_getN(2);
  set senderSignature($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasSenderSignature() => $_has(2);
  void clearSenderSignature() => clearField(3);
}

class SignedTransactionWithProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignedTransactionWithProof', package: const $pb.PackageName('types'))
    ..a<Int64>(1, 'version', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<SignedTransaction>(2, 'signedTransaction', $pb.PbFieldType.OM, SignedTransaction.getDefault, SignedTransaction.create)
    ..a<$4.SignedTransactionProof>(3, 'proof', $pb.PbFieldType.OM, $4.SignedTransactionProof.getDefault, $4.SignedTransactionProof.create)
    ..a<$5.EventsList>(4, 'events', $pb.PbFieldType.OM, $5.EventsList.getDefault, $5.EventsList.create)
    ..hasRequiredFields = false
  ;

  SignedTransactionWithProof._() : super();
  factory SignedTransactionWithProof() => create();
  factory SignedTransactionWithProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedTransactionWithProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignedTransactionWithProof clone() => SignedTransactionWithProof()..mergeFromMessage(this);
  SignedTransactionWithProof copyWith(void Function(SignedTransactionWithProof) updates) => super.copyWith((message) => updates(message as SignedTransactionWithProof));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignedTransactionWithProof create() => SignedTransactionWithProof._();
  SignedTransactionWithProof createEmptyInstance() => create();
  static $pb.PbList<SignedTransactionWithProof> createRepeated() => $pb.PbList<SignedTransactionWithProof>();
  static SignedTransactionWithProof getDefault() => _defaultInstance ??= create()..freeze();
  static SignedTransactionWithProof _defaultInstance;

  Int64 get version => $_getI64(0);
  set version(Int64 v) { $_setInt64(0, v); }
  $core.bool hasVersion() => $_has(0);
  void clearVersion() => clearField(1);

  SignedTransaction get signedTransaction => $_getN(1);
  set signedTransaction(SignedTransaction v) { setField(2, v); }
  $core.bool hasSignedTransaction() => $_has(1);
  void clearSignedTransaction() => clearField(2);

  $4.SignedTransactionProof get proof => $_getN(2);
  set proof($4.SignedTransactionProof v) { setField(3, v); }
  $core.bool hasProof() => $_has(2);
  void clearProof() => clearField(3);

  $5.EventsList get events => $_getN(3);
  set events($5.EventsList v) { setField(4, v); }
  $core.bool hasEvents() => $_has(3);
  void clearEvents() => clearField(4);
}

class SignedTransactionsBlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignedTransactionsBlock', package: const $pb.PackageName('types'))
    ..pc<SignedTransaction>(1, 'transactions', $pb.PbFieldType.PM,SignedTransaction.create)
    ..a<$core.List<$core.int>>(2, 'validatorPublicKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'validatorSignature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignedTransactionsBlock._() : super();
  factory SignedTransactionsBlock() => create();
  factory SignedTransactionsBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedTransactionsBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignedTransactionsBlock clone() => SignedTransactionsBlock()..mergeFromMessage(this);
  SignedTransactionsBlock copyWith(void Function(SignedTransactionsBlock) updates) => super.copyWith((message) => updates(message as SignedTransactionsBlock));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignedTransactionsBlock create() => SignedTransactionsBlock._();
  SignedTransactionsBlock createEmptyInstance() => create();
  static $pb.PbList<SignedTransactionsBlock> createRepeated() => $pb.PbList<SignedTransactionsBlock>();
  static SignedTransactionsBlock getDefault() => _defaultInstance ??= create()..freeze();
  static SignedTransactionsBlock _defaultInstance;

  $core.List<SignedTransaction> get transactions => $_getList(0);

  $core.List<$core.int> get validatorPublicKey => $_getN(1);
  set validatorPublicKey($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasValidatorPublicKey() => $_has(1);
  void clearValidatorPublicKey() => clearField(2);

  $core.List<$core.int> get validatorSignature => $_getN(2);
  set validatorSignature($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasValidatorSignature() => $_has(2);
  void clearValidatorSignature() => clearField(3);
}

class WriteSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WriteSet', package: const $pb.PackageName('types'))
    ..pc<WriteOp>(1, 'writeSet', $pb.PbFieldType.PM,WriteOp.create)
    ..hasRequiredFields = false
  ;

  WriteSet._() : super();
  factory WriteSet() => create();
  factory WriteSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WriteSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WriteSet clone() => WriteSet()..mergeFromMessage(this);
  WriteSet copyWith(void Function(WriteSet) updates) => super.copyWith((message) => updates(message as WriteSet));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteSet create() => WriteSet._();
  WriteSet createEmptyInstance() => create();
  static $pb.PbList<WriteSet> createRepeated() => $pb.PbList<WriteSet>();
  static WriteSet getDefault() => _defaultInstance ??= create()..freeze();
  static WriteSet _defaultInstance;

  $core.List<WriteOp> get writeSet => $_getList(0);
}

class WriteOp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WriteOp', package: const $pb.PackageName('types'))
    ..a<$6.AccessPath>(1, 'accessPath', $pb.PbFieldType.OM, $6.AccessPath.getDefault, $6.AccessPath.create)
    ..a<$core.List<$core.int>>(2, 'value', $pb.PbFieldType.OY)
    ..e<WriteOpType>(3, 'type', $pb.PbFieldType.OE, WriteOpType.Write, WriteOpType.valueOf, WriteOpType.values)
    ..hasRequiredFields = false
  ;

  WriteOp._() : super();
  factory WriteOp() => create();
  factory WriteOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WriteOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WriteOp clone() => WriteOp()..mergeFromMessage(this);
  WriteOp copyWith(void Function(WriteOp) updates) => super.copyWith((message) => updates(message as WriteOp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteOp create() => WriteOp._();
  WriteOp createEmptyInstance() => create();
  static $pb.PbList<WriteOp> createRepeated() => $pb.PbList<WriteOp>();
  static WriteOp getDefault() => _defaultInstance ??= create()..freeze();
  static WriteOp _defaultInstance;

  $6.AccessPath get accessPath => $_getN(0);
  set accessPath($6.AccessPath v) { setField(1, v); }
  $core.bool hasAccessPath() => $_has(0);
  void clearAccessPath() => clearField(1);

  $core.List<$core.int> get value => $_getN(1);
  set value($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasValue() => $_has(1);
  void clearValue() => clearField(2);

  WriteOpType get type => $_getN(2);
  set type(WriteOpType v) { setField(3, v); }
  $core.bool hasType() => $_has(2);
  void clearType() => clearField(3);
}

class AccountState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountState', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'address', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'blob', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AccountState._() : super();
  factory AccountState() => create();
  factory AccountState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountState clone() => AccountState()..mergeFromMessage(this);
  AccountState copyWith(void Function(AccountState) updates) => super.copyWith((message) => updates(message as AccountState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountState create() => AccountState._();
  AccountState createEmptyInstance() => create();
  static $pb.PbList<AccountState> createRepeated() => $pb.PbList<AccountState>();
  static AccountState getDefault() => _defaultInstance ??= create()..freeze();
  static AccountState _defaultInstance;

  $core.List<$core.int> get address => $_getN(0);
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasAddress() => $_has(0);
  void clearAddress() => clearField(1);

  $core.List<$core.int> get blob => $_getN(1);
  set blob($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasBlob() => $_has(1);
  void clearBlob() => clearField(2);
}

class TransactionToCommit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionToCommit', package: const $pb.PackageName('types'))
    ..a<SignedTransaction>(1, 'signedTxn', $pb.PbFieldType.OM, SignedTransaction.getDefault, SignedTransaction.create)
    ..pc<AccountState>(2, 'accountStates', $pb.PbFieldType.PM,AccountState.create)
    ..pc<$5.Event>(3, 'events', $pb.PbFieldType.PM,$5.Event.create)
    ..a<Int64>(4, 'gasUsed', $pb.PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  TransactionToCommit._() : super();
  factory TransactionToCommit() => create();
  factory TransactionToCommit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionToCommit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransactionToCommit clone() => TransactionToCommit()..mergeFromMessage(this);
  TransactionToCommit copyWith(void Function(TransactionToCommit) updates) => super.copyWith((message) => updates(message as TransactionToCommit));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionToCommit create() => TransactionToCommit._();
  TransactionToCommit createEmptyInstance() => create();
  static $pb.PbList<TransactionToCommit> createRepeated() => $pb.PbList<TransactionToCommit>();
  static TransactionToCommit getDefault() => _defaultInstance ??= create()..freeze();
  static TransactionToCommit _defaultInstance;

  SignedTransaction get signedTxn => $_getN(0);
  set signedTxn(SignedTransaction v) { setField(1, v); }
  $core.bool hasSignedTxn() => $_has(0);
  void clearSignedTxn() => clearField(1);

  $core.List<AccountState> get accountStates => $_getList(1);

  $core.List<$5.Event> get events => $_getList(2);

  Int64 get gasUsed => $_getI64(3);
  set gasUsed(Int64 v) { $_setInt64(3, v); }
  $core.bool hasGasUsed() => $_has(3);
  void clearGasUsed() => clearField(4);
}

class TransactionListWithProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionListWithProof', package: const $pb.PackageName('types'))
    ..pc<SignedTransaction>(1, 'transactions', $pb.PbFieldType.PM,SignedTransaction.create)
    ..pc<$3.TransactionInfo>(2, 'infos', $pb.PbFieldType.PM,$3.TransactionInfo.create)
    ..a<$5.EventsForVersions>(3, 'eventsForVersions', $pb.PbFieldType.OM, $5.EventsForVersions.getDefault, $5.EventsForVersions.create)
    ..a<$7.UInt64Value>(4, 'firstTransactionVersion', $pb.PbFieldType.OM, $7.UInt64Value.getDefault, $7.UInt64Value.create)
    ..a<$4.AccumulatorProof>(5, 'proofOfFirstTransaction', $pb.PbFieldType.OM, $4.AccumulatorProof.getDefault, $4.AccumulatorProof.create)
    ..a<$4.AccumulatorProof>(6, 'proofOfLastTransaction', $pb.PbFieldType.OM, $4.AccumulatorProof.getDefault, $4.AccumulatorProof.create)
    ..hasRequiredFields = false
  ;

  TransactionListWithProof._() : super();
  factory TransactionListWithProof() => create();
  factory TransactionListWithProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionListWithProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransactionListWithProof clone() => TransactionListWithProof()..mergeFromMessage(this);
  TransactionListWithProof copyWith(void Function(TransactionListWithProof) updates) => super.copyWith((message) => updates(message as TransactionListWithProof));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionListWithProof create() => TransactionListWithProof._();
  TransactionListWithProof createEmptyInstance() => create();
  static $pb.PbList<TransactionListWithProof> createRepeated() => $pb.PbList<TransactionListWithProof>();
  static TransactionListWithProof getDefault() => _defaultInstance ??= create()..freeze();
  static TransactionListWithProof _defaultInstance;

  $core.List<SignedTransaction> get transactions => $_getList(0);

  $core.List<$3.TransactionInfo> get infos => $_getList(1);

  $5.EventsForVersions get eventsForVersions => $_getN(2);
  set eventsForVersions($5.EventsForVersions v) { setField(3, v); }
  $core.bool hasEventsForVersions() => $_has(2);
  void clearEventsForVersions() => clearField(3);

  $7.UInt64Value get firstTransactionVersion => $_getN(3);
  set firstTransactionVersion($7.UInt64Value v) { setField(4, v); }
  $core.bool hasFirstTransactionVersion() => $_has(3);
  void clearFirstTransactionVersion() => clearField(4);

  $4.AccumulatorProof get proofOfFirstTransaction => $_getN(4);
  set proofOfFirstTransaction($4.AccumulatorProof v) { setField(5, v); }
  $core.bool hasProofOfFirstTransaction() => $_has(4);
  void clearProofOfFirstTransaction() => clearField(5);

  $4.AccumulatorProof get proofOfLastTransaction => $_getN(5);
  set proofOfLastTransaction($4.AccumulatorProof v) { setField(6, v); }
  $core.bool hasProofOfLastTransaction() => $_has(5);
  void clearProofOfLastTransaction() => clearField(6);
}

