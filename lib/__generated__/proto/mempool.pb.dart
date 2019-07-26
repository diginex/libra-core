///
//  Generated code. Do not modify.
//  source: proto/mempool.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'transaction.pb.dart' as $11;
import 'mempool_status.pb.dart' as $14;

class AddTransactionWithValidationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddTransactionWithValidationRequest', package: const $pb.PackageName('mempool'))
    ..a<$11.SignedTransaction>(1, 'signedTxn', $pb.PbFieldType.OM, $11.SignedTransaction.getDefault, $11.SignedTransaction.create)
    ..a<Int64>(2, 'maxGasCost', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Int64>(3, 'latestSequenceNumber', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Int64>(4, 'accountBalance', $pb.PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddTransactionWithValidationRequest._() : super();
  factory AddTransactionWithValidationRequest() => create();
  factory AddTransactionWithValidationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTransactionWithValidationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddTransactionWithValidationRequest clone() => AddTransactionWithValidationRequest()..mergeFromMessage(this);
  AddTransactionWithValidationRequest copyWith(void Function(AddTransactionWithValidationRequest) updates) => super.copyWith((message) => updates(message as AddTransactionWithValidationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddTransactionWithValidationRequest create() => AddTransactionWithValidationRequest._();
  AddTransactionWithValidationRequest createEmptyInstance() => create();
  static $pb.PbList<AddTransactionWithValidationRequest> createRepeated() => $pb.PbList<AddTransactionWithValidationRequest>();
  static AddTransactionWithValidationRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AddTransactionWithValidationRequest _defaultInstance;

  $11.SignedTransaction get signedTxn => $_getN(0);
  set signedTxn($11.SignedTransaction v) { setField(1, v); }
  $core.bool hasSignedTxn() => $_has(0);
  void clearSignedTxn() => clearField(1);

  Int64 get maxGasCost => $_getI64(1);
  set maxGasCost(Int64 v) { $_setInt64(1, v); }
  $core.bool hasMaxGasCost() => $_has(1);
  void clearMaxGasCost() => clearField(2);

  Int64 get latestSequenceNumber => $_getI64(2);
  set latestSequenceNumber(Int64 v) { $_setInt64(2, v); }
  $core.bool hasLatestSequenceNumber() => $_has(2);
  void clearLatestSequenceNumber() => clearField(3);

  Int64 get accountBalance => $_getI64(3);
  set accountBalance(Int64 v) { $_setInt64(3, v); }
  $core.bool hasAccountBalance() => $_has(3);
  void clearAccountBalance() => clearField(4);
}

class AddTransactionWithValidationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddTransactionWithValidationResponse', package: const $pb.PackageName('mempool'))
    ..a<Int64>(1, 'currentVersion', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<$14.MempoolAddTransactionStatus>(2, 'status', $pb.PbFieldType.OM, $14.MempoolAddTransactionStatus.getDefault, $14.MempoolAddTransactionStatus.create)
    ..hasRequiredFields = false
  ;

  AddTransactionWithValidationResponse._() : super();
  factory AddTransactionWithValidationResponse() => create();
  factory AddTransactionWithValidationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTransactionWithValidationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddTransactionWithValidationResponse clone() => AddTransactionWithValidationResponse()..mergeFromMessage(this);
  AddTransactionWithValidationResponse copyWith(void Function(AddTransactionWithValidationResponse) updates) => super.copyWith((message) => updates(message as AddTransactionWithValidationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddTransactionWithValidationResponse create() => AddTransactionWithValidationResponse._();
  AddTransactionWithValidationResponse createEmptyInstance() => create();
  static $pb.PbList<AddTransactionWithValidationResponse> createRepeated() => $pb.PbList<AddTransactionWithValidationResponse>();
  static AddTransactionWithValidationResponse getDefault() => _defaultInstance ??= create()..freeze();
  static AddTransactionWithValidationResponse _defaultInstance;

  Int64 get currentVersion => $_getI64(0);
  set currentVersion(Int64 v) { $_setInt64(0, v); }
  $core.bool hasCurrentVersion() => $_has(0);
  void clearCurrentVersion() => clearField(1);

  $14.MempoolAddTransactionStatus get status => $_getN(1);
  set status($14.MempoolAddTransactionStatus v) { setField(2, v); }
  $core.bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);
}

class GetBlockRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetBlockRequest', package: const $pb.PackageName('mempool'))
    ..a<Int64>(1, 'maxBlockSize', $pb.PbFieldType.OU6, Int64.ZERO)
    ..pc<TransactionExclusion>(2, 'transactions', $pb.PbFieldType.PM,TransactionExclusion.create)
    ..hasRequiredFields = false
  ;

  GetBlockRequest._() : super();
  factory GetBlockRequest() => create();
  factory GetBlockRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetBlockRequest clone() => GetBlockRequest()..mergeFromMessage(this);
  GetBlockRequest copyWith(void Function(GetBlockRequest) updates) => super.copyWith((message) => updates(message as GetBlockRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockRequest create() => GetBlockRequest._();
  GetBlockRequest createEmptyInstance() => create();
  static $pb.PbList<GetBlockRequest> createRepeated() => $pb.PbList<GetBlockRequest>();
  static GetBlockRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetBlockRequest _defaultInstance;

  Int64 get maxBlockSize => $_getI64(0);
  set maxBlockSize(Int64 v) { $_setInt64(0, v); }
  $core.bool hasMaxBlockSize() => $_has(0);
  void clearMaxBlockSize() => clearField(1);

  $core.List<TransactionExclusion> get transactions => $_getList(1);
}

class GetBlockResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetBlockResponse', package: const $pb.PackageName('mempool'))
    ..a<$11.SignedTransactionsBlock>(1, 'block', $pb.PbFieldType.OM, $11.SignedTransactionsBlock.getDefault, $11.SignedTransactionsBlock.create)
    ..hasRequiredFields = false
  ;

  GetBlockResponse._() : super();
  factory GetBlockResponse() => create();
  factory GetBlockResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetBlockResponse clone() => GetBlockResponse()..mergeFromMessage(this);
  GetBlockResponse copyWith(void Function(GetBlockResponse) updates) => super.copyWith((message) => updates(message as GetBlockResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockResponse create() => GetBlockResponse._();
  GetBlockResponse createEmptyInstance() => create();
  static $pb.PbList<GetBlockResponse> createRepeated() => $pb.PbList<GetBlockResponse>();
  static GetBlockResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetBlockResponse _defaultInstance;

  $11.SignedTransactionsBlock get block => $_getN(0);
  set block($11.SignedTransactionsBlock v) { setField(1, v); }
  $core.bool hasBlock() => $_has(0);
  void clearBlock() => clearField(1);
}

class TransactionExclusion extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionExclusion', package: const $pb.PackageName('mempool'))
    ..a<$core.List<$core.int>>(1, 'sender', $pb.PbFieldType.OY)
    ..a<Int64>(2, 'sequenceNumber', $pb.PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  TransactionExclusion._() : super();
  factory TransactionExclusion() => create();
  factory TransactionExclusion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionExclusion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransactionExclusion clone() => TransactionExclusion()..mergeFromMessage(this);
  TransactionExclusion copyWith(void Function(TransactionExclusion) updates) => super.copyWith((message) => updates(message as TransactionExclusion));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionExclusion create() => TransactionExclusion._();
  TransactionExclusion createEmptyInstance() => create();
  static $pb.PbList<TransactionExclusion> createRepeated() => $pb.PbList<TransactionExclusion>();
  static TransactionExclusion getDefault() => _defaultInstance ??= create()..freeze();
  static TransactionExclusion _defaultInstance;

  $core.List<$core.int> get sender => $_getN(0);
  set sender($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSender() => $_has(0);
  void clearSender() => clearField(1);

  Int64 get sequenceNumber => $_getI64(1);
  set sequenceNumber(Int64 v) { $_setInt64(1, v); }
  $core.bool hasSequenceNumber() => $_has(1);
  void clearSequenceNumber() => clearField(2);
}

class CommitTransactionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommitTransactionsRequest', package: const $pb.PackageName('mempool'))
    ..pc<CommittedTransaction>(1, 'transactions', $pb.PbFieldType.PM,CommittedTransaction.create)
    ..a<Int64>(2, 'blockTimestampUsecs', $pb.PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  CommitTransactionsRequest._() : super();
  factory CommitTransactionsRequest() => create();
  factory CommitTransactionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommitTransactionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CommitTransactionsRequest clone() => CommitTransactionsRequest()..mergeFromMessage(this);
  CommitTransactionsRequest copyWith(void Function(CommitTransactionsRequest) updates) => super.copyWith((message) => updates(message as CommitTransactionsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommitTransactionsRequest create() => CommitTransactionsRequest._();
  CommitTransactionsRequest createEmptyInstance() => create();
  static $pb.PbList<CommitTransactionsRequest> createRepeated() => $pb.PbList<CommitTransactionsRequest>();
  static CommitTransactionsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CommitTransactionsRequest _defaultInstance;

  $core.List<CommittedTransaction> get transactions => $_getList(0);

  Int64 get blockTimestampUsecs => $_getI64(1);
  set blockTimestampUsecs(Int64 v) { $_setInt64(1, v); }
  $core.bool hasBlockTimestampUsecs() => $_has(1);
  void clearBlockTimestampUsecs() => clearField(2);
}

class CommitTransactionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommitTransactionsResponse', package: const $pb.PackageName('mempool'))
    ..hasRequiredFields = false
  ;

  CommitTransactionsResponse._() : super();
  factory CommitTransactionsResponse() => create();
  factory CommitTransactionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommitTransactionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CommitTransactionsResponse clone() => CommitTransactionsResponse()..mergeFromMessage(this);
  CommitTransactionsResponse copyWith(void Function(CommitTransactionsResponse) updates) => super.copyWith((message) => updates(message as CommitTransactionsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommitTransactionsResponse create() => CommitTransactionsResponse._();
  CommitTransactionsResponse createEmptyInstance() => create();
  static $pb.PbList<CommitTransactionsResponse> createRepeated() => $pb.PbList<CommitTransactionsResponse>();
  static CommitTransactionsResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CommitTransactionsResponse _defaultInstance;
}

class CommittedTransaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommittedTransaction', package: const $pb.PackageName('mempool'))
    ..a<$core.List<$core.int>>(1, 'sender', $pb.PbFieldType.OY)
    ..a<Int64>(2, 'sequenceNumber', $pb.PbFieldType.OU6, Int64.ZERO)
    ..aOB(3, 'isRejected')
    ..hasRequiredFields = false
  ;

  CommittedTransaction._() : super();
  factory CommittedTransaction() => create();
  factory CommittedTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommittedTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CommittedTransaction clone() => CommittedTransaction()..mergeFromMessage(this);
  CommittedTransaction copyWith(void Function(CommittedTransaction) updates) => super.copyWith((message) => updates(message as CommittedTransaction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommittedTransaction create() => CommittedTransaction._();
  CommittedTransaction createEmptyInstance() => create();
  static $pb.PbList<CommittedTransaction> createRepeated() => $pb.PbList<CommittedTransaction>();
  static CommittedTransaction getDefault() => _defaultInstance ??= create()..freeze();
  static CommittedTransaction _defaultInstance;

  $core.List<$core.int> get sender => $_getN(0);
  set sender($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSender() => $_has(0);
  void clearSender() => clearField(1);

  Int64 get sequenceNumber => $_getI64(1);
  set sequenceNumber(Int64 v) { $_setInt64(1, v); }
  $core.bool hasSequenceNumber() => $_has(1);
  void clearSequenceNumber() => clearField(2);

  $core.bool get isRejected => $_get(2, false);
  set isRejected($core.bool v) { $_setBool(2, v); }
  $core.bool hasIsRejected() => $_has(2);
  void clearIsRejected() => clearField(3);
}

class HealthCheckRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HealthCheckRequest', package: const $pb.PackageName('mempool'))
    ..hasRequiredFields = false
  ;

  HealthCheckRequest._() : super();
  factory HealthCheckRequest() => create();
  factory HealthCheckRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthCheckRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HealthCheckRequest clone() => HealthCheckRequest()..mergeFromMessage(this);
  HealthCheckRequest copyWith(void Function(HealthCheckRequest) updates) => super.copyWith((message) => updates(message as HealthCheckRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HealthCheckRequest create() => HealthCheckRequest._();
  HealthCheckRequest createEmptyInstance() => create();
  static $pb.PbList<HealthCheckRequest> createRepeated() => $pb.PbList<HealthCheckRequest>();
  static HealthCheckRequest getDefault() => _defaultInstance ??= create()..freeze();
  static HealthCheckRequest _defaultInstance;
}

class HealthCheckResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HealthCheckResponse', package: const $pb.PackageName('mempool'))
    ..aOB(1, 'isHealthy')
    ..hasRequiredFields = false
  ;

  HealthCheckResponse._() : super();
  factory HealthCheckResponse() => create();
  factory HealthCheckResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthCheckResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HealthCheckResponse clone() => HealthCheckResponse()..mergeFromMessage(this);
  HealthCheckResponse copyWith(void Function(HealthCheckResponse) updates) => super.copyWith((message) => updates(message as HealthCheckResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HealthCheckResponse create() => HealthCheckResponse._();
  HealthCheckResponse createEmptyInstance() => create();
  static $pb.PbList<HealthCheckResponse> createRepeated() => $pb.PbList<HealthCheckResponse>();
  static HealthCheckResponse getDefault() => _defaultInstance ??= create()..freeze();
  static HealthCheckResponse _defaultInstance;

  $core.bool get isHealthy => $_get(0, false);
  set isHealthy($core.bool v) { $_setBool(0, v); }
  $core.bool hasIsHealthy() => $_has(0);
  void clearIsHealthy() => clearField(1);
}

