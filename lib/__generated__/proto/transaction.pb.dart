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
import 'events.pb.dart' as $7;
import 'transaction_info.pb.dart' as $3;
import 'wrappers.pb.dart' as $8;

export 'transaction.pbenum.dart';

class TransactionArgument extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionArgument', package: const $pb.PackageName('types'))
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
}

class SignedTransaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignedTransaction', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(5, 'signedTxn', $pb.PbFieldType.OY)
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

  $core.List<$core.int> get signedTxn => $_getN(0);
  set signedTxn($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSignedTxn() => $_has(0);
  void clearSignedTxn() => clearField(5);
}

class SignedTransactionWithProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignedTransactionWithProof', package: const $pb.PackageName('types'))
    ..a<Int64>(1, 'version', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<SignedTransaction>(2, 'signedTransaction', $pb.PbFieldType.OM, SignedTransaction.getDefault, SignedTransaction.create)
    ..a<$4.SignedTransactionProof>(3, 'proof', $pb.PbFieldType.OM, $4.SignedTransactionProof.getDefault, $4.SignedTransactionProof.create)
    ..a<$7.EventsList>(4, 'events', $pb.PbFieldType.OM, $7.EventsList.getDefault, $7.EventsList.create)
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

  $7.EventsList get events => $_getN(3);
  set events($7.EventsList v) { setField(4, v); }
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
    ..pc<$7.Event>(3, 'events', $pb.PbFieldType.PM,$7.Event.create)
    ..a<Int64>(4, 'gasUsed', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Int64>(5, 'majorStatus', $pb.PbFieldType.OU6, Int64.ZERO)
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

  $core.List<$7.Event> get events => $_getList(2);

  Int64 get gasUsed => $_getI64(3);
  set gasUsed(Int64 v) { $_setInt64(3, v); }
  $core.bool hasGasUsed() => $_has(3);
  void clearGasUsed() => clearField(4);

  Int64 get majorStatus => $_getI64(4);
  set majorStatus(Int64 v) { $_setInt64(4, v); }
  $core.bool hasMajorStatus() => $_has(4);
  void clearMajorStatus() => clearField(5);
}

class TransactionListWithProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionListWithProof', package: const $pb.PackageName('types'))
    ..pc<SignedTransaction>(1, 'transactions', $pb.PbFieldType.PM,SignedTransaction.create)
    ..pc<$3.TransactionInfo>(2, 'infos', $pb.PbFieldType.PM,$3.TransactionInfo.create)
    ..a<$7.EventsForVersions>(3, 'eventsForVersions', $pb.PbFieldType.OM, $7.EventsForVersions.getDefault, $7.EventsForVersions.create)
    ..a<$8.UInt64Value>(4, 'firstTransactionVersion', $pb.PbFieldType.OM, $8.UInt64Value.getDefault, $8.UInt64Value.create)
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

  $7.EventsForVersions get eventsForVersions => $_getN(2);
  set eventsForVersions($7.EventsForVersions v) { setField(3, v); }
  $core.bool hasEventsForVersions() => $_has(2);
  void clearEventsForVersions() => clearField(3);

  $8.UInt64Value get firstTransactionVersion => $_getN(3);
  set firstTransactionVersion($8.UInt64Value v) { setField(4, v); }
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

