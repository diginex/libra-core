///
//  Generated code. Do not modify.
//  source: proto/get_with_proof.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'ledger_info.pb.dart' as $8;
import 'validator_change.pb.dart' as $9;
import 'account_state_blob.pb.dart' as $10;
import 'transaction.pb.dart' as $11;
import 'access_path.pb.dart' as $5;
import 'events.pb.dart' as $6;

class UpdateToLatestLedgerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateToLatestLedgerRequest', package: const $pb.PackageName('types'))
    ..a<Int64>(1, 'clientKnownVersion', $pb.PbFieldType.OU6, Int64.ZERO)
    ..pc<RequestItem>(2, 'requestedItems', $pb.PbFieldType.PM,RequestItem.create)
    ..hasRequiredFields = false
  ;

  UpdateToLatestLedgerRequest._() : super();
  factory UpdateToLatestLedgerRequest() => create();
  factory UpdateToLatestLedgerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateToLatestLedgerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateToLatestLedgerRequest clone() => UpdateToLatestLedgerRequest()..mergeFromMessage(this);
  UpdateToLatestLedgerRequest copyWith(void Function(UpdateToLatestLedgerRequest) updates) => super.copyWith((message) => updates(message as UpdateToLatestLedgerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateToLatestLedgerRequest create() => UpdateToLatestLedgerRequest._();
  UpdateToLatestLedgerRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateToLatestLedgerRequest> createRepeated() => $pb.PbList<UpdateToLatestLedgerRequest>();
  static UpdateToLatestLedgerRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateToLatestLedgerRequest _defaultInstance;

  Int64 get clientKnownVersion => $_getI64(0);
  set clientKnownVersion(Int64 v) { $_setInt64(0, v); }
  $core.bool hasClientKnownVersion() => $_has(0);
  void clearClientKnownVersion() => clearField(1);

  $core.List<RequestItem> get requestedItems => $_getList(1);
}

enum RequestItem_RequestedItems {
  getAccountStateRequest, 
  getAccountTransactionBySequenceNumberRequest, 
  getEventsByEventAccessPathRequest, 
  getTransactionsRequest, 
  notSet
}

class RequestItem extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RequestItem_RequestedItems> _RequestItem_RequestedItemsByTag = {
    1 : RequestItem_RequestedItems.getAccountStateRequest,
    2 : RequestItem_RequestedItems.getAccountTransactionBySequenceNumberRequest,
    3 : RequestItem_RequestedItems.getEventsByEventAccessPathRequest,
    4 : RequestItem_RequestedItems.getTransactionsRequest,
    0 : RequestItem_RequestedItems.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestItem', package: const $pb.PackageName('types'))
    ..oo(0, [1, 2, 3, 4])
    ..a<GetAccountStateRequest>(1, 'getAccountStateRequest', $pb.PbFieldType.OM, GetAccountStateRequest.getDefault, GetAccountStateRequest.create)
    ..a<GetAccountTransactionBySequenceNumberRequest>(2, 'getAccountTransactionBySequenceNumberRequest', $pb.PbFieldType.OM, GetAccountTransactionBySequenceNumberRequest.getDefault, GetAccountTransactionBySequenceNumberRequest.create)
    ..a<GetEventsByEventAccessPathRequest>(3, 'getEventsByEventAccessPathRequest', $pb.PbFieldType.OM, GetEventsByEventAccessPathRequest.getDefault, GetEventsByEventAccessPathRequest.create)
    ..a<GetTransactionsRequest>(4, 'getTransactionsRequest', $pb.PbFieldType.OM, GetTransactionsRequest.getDefault, GetTransactionsRequest.create)
    ..hasRequiredFields = false
  ;

  RequestItem._() : super();
  factory RequestItem() => create();
  factory RequestItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestItem clone() => RequestItem()..mergeFromMessage(this);
  RequestItem copyWith(void Function(RequestItem) updates) => super.copyWith((message) => updates(message as RequestItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestItem create() => RequestItem._();
  RequestItem createEmptyInstance() => create();
  static $pb.PbList<RequestItem> createRepeated() => $pb.PbList<RequestItem>();
  static RequestItem getDefault() => _defaultInstance ??= create()..freeze();
  static RequestItem _defaultInstance;

  RequestItem_RequestedItems whichRequestedItems() => _RequestItem_RequestedItemsByTag[$_whichOneof(0)];
  void clearRequestedItems() => clearField($_whichOneof(0));

  GetAccountStateRequest get getAccountStateRequest => $_getN(0);
  set getAccountStateRequest(GetAccountStateRequest v) { setField(1, v); }
  $core.bool hasGetAccountStateRequest() => $_has(0);
  void clearGetAccountStateRequest() => clearField(1);

  GetAccountTransactionBySequenceNumberRequest get getAccountTransactionBySequenceNumberRequest => $_getN(1);
  set getAccountTransactionBySequenceNumberRequest(GetAccountTransactionBySequenceNumberRequest v) { setField(2, v); }
  $core.bool hasGetAccountTransactionBySequenceNumberRequest() => $_has(1);
  void clearGetAccountTransactionBySequenceNumberRequest() => clearField(2);

  GetEventsByEventAccessPathRequest get getEventsByEventAccessPathRequest => $_getN(2);
  set getEventsByEventAccessPathRequest(GetEventsByEventAccessPathRequest v) { setField(3, v); }
  $core.bool hasGetEventsByEventAccessPathRequest() => $_has(2);
  void clearGetEventsByEventAccessPathRequest() => clearField(3);

  GetTransactionsRequest get getTransactionsRequest => $_getN(3);
  set getTransactionsRequest(GetTransactionsRequest v) { setField(4, v); }
  $core.bool hasGetTransactionsRequest() => $_has(3);
  void clearGetTransactionsRequest() => clearField(4);
}

class UpdateToLatestLedgerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateToLatestLedgerResponse', package: const $pb.PackageName('types'))
    ..pc<ResponseItem>(1, 'responseItems', $pb.PbFieldType.PM,ResponseItem.create)
    ..a<$8.LedgerInfoWithSignatures>(2, 'ledgerInfoWithSigs', $pb.PbFieldType.OM, $8.LedgerInfoWithSignatures.getDefault, $8.LedgerInfoWithSignatures.create)
    ..pc<$9.ValidatorChangeEventWithProof>(3, 'validatorChangeEvents', $pb.PbFieldType.PM,$9.ValidatorChangeEventWithProof.create)
    ..hasRequiredFields = false
  ;

  UpdateToLatestLedgerResponse._() : super();
  factory UpdateToLatestLedgerResponse() => create();
  factory UpdateToLatestLedgerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateToLatestLedgerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateToLatestLedgerResponse clone() => UpdateToLatestLedgerResponse()..mergeFromMessage(this);
  UpdateToLatestLedgerResponse copyWith(void Function(UpdateToLatestLedgerResponse) updates) => super.copyWith((message) => updates(message as UpdateToLatestLedgerResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateToLatestLedgerResponse create() => UpdateToLatestLedgerResponse._();
  UpdateToLatestLedgerResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateToLatestLedgerResponse> createRepeated() => $pb.PbList<UpdateToLatestLedgerResponse>();
  static UpdateToLatestLedgerResponse getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateToLatestLedgerResponse _defaultInstance;

  $core.List<ResponseItem> get responseItems => $_getList(0);

  $8.LedgerInfoWithSignatures get ledgerInfoWithSigs => $_getN(1);
  set ledgerInfoWithSigs($8.LedgerInfoWithSignatures v) { setField(2, v); }
  $core.bool hasLedgerInfoWithSigs() => $_has(1);
  void clearLedgerInfoWithSigs() => clearField(2);

  $core.List<$9.ValidatorChangeEventWithProof> get validatorChangeEvents => $_getList(2);
}

enum ResponseItem_ResponseItems {
  getAccountStateResponse, 
  getAccountTransactionBySequenceNumberResponse, 
  getEventsByEventAccessPathResponse, 
  getTransactionsResponse, 
  notSet
}

class ResponseItem extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ResponseItem_ResponseItems> _ResponseItem_ResponseItemsByTag = {
    3 : ResponseItem_ResponseItems.getAccountStateResponse,
    4 : ResponseItem_ResponseItems.getAccountTransactionBySequenceNumberResponse,
    5 : ResponseItem_ResponseItems.getEventsByEventAccessPathResponse,
    6 : ResponseItem_ResponseItems.getTransactionsResponse,
    0 : ResponseItem_ResponseItems.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseItem', package: const $pb.PackageName('types'))
    ..oo(0, [3, 4, 5, 6])
    ..a<GetAccountStateResponse>(3, 'getAccountStateResponse', $pb.PbFieldType.OM, GetAccountStateResponse.getDefault, GetAccountStateResponse.create)
    ..a<GetAccountTransactionBySequenceNumberResponse>(4, 'getAccountTransactionBySequenceNumberResponse', $pb.PbFieldType.OM, GetAccountTransactionBySequenceNumberResponse.getDefault, GetAccountTransactionBySequenceNumberResponse.create)
    ..a<GetEventsByEventAccessPathResponse>(5, 'getEventsByEventAccessPathResponse', $pb.PbFieldType.OM, GetEventsByEventAccessPathResponse.getDefault, GetEventsByEventAccessPathResponse.create)
    ..a<GetTransactionsResponse>(6, 'getTransactionsResponse', $pb.PbFieldType.OM, GetTransactionsResponse.getDefault, GetTransactionsResponse.create)
    ..hasRequiredFields = false
  ;

  ResponseItem._() : super();
  factory ResponseItem() => create();
  factory ResponseItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseItem clone() => ResponseItem()..mergeFromMessage(this);
  ResponseItem copyWith(void Function(ResponseItem) updates) => super.copyWith((message) => updates(message as ResponseItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseItem create() => ResponseItem._();
  ResponseItem createEmptyInstance() => create();
  static $pb.PbList<ResponseItem> createRepeated() => $pb.PbList<ResponseItem>();
  static ResponseItem getDefault() => _defaultInstance ??= create()..freeze();
  static ResponseItem _defaultInstance;

  ResponseItem_ResponseItems whichResponseItems() => _ResponseItem_ResponseItemsByTag[$_whichOneof(0)];
  void clearResponseItems() => clearField($_whichOneof(0));

  GetAccountStateResponse get getAccountStateResponse => $_getN(0);
  set getAccountStateResponse(GetAccountStateResponse v) { setField(3, v); }
  $core.bool hasGetAccountStateResponse() => $_has(0);
  void clearGetAccountStateResponse() => clearField(3);

  GetAccountTransactionBySequenceNumberResponse get getAccountTransactionBySequenceNumberResponse => $_getN(1);
  set getAccountTransactionBySequenceNumberResponse(GetAccountTransactionBySequenceNumberResponse v) { setField(4, v); }
  $core.bool hasGetAccountTransactionBySequenceNumberResponse() => $_has(1);
  void clearGetAccountTransactionBySequenceNumberResponse() => clearField(4);

  GetEventsByEventAccessPathResponse get getEventsByEventAccessPathResponse => $_getN(2);
  set getEventsByEventAccessPathResponse(GetEventsByEventAccessPathResponse v) { setField(5, v); }
  $core.bool hasGetEventsByEventAccessPathResponse() => $_has(2);
  void clearGetEventsByEventAccessPathResponse() => clearField(5);

  GetTransactionsResponse get getTransactionsResponse => $_getN(3);
  set getTransactionsResponse(GetTransactionsResponse v) { setField(6, v); }
  $core.bool hasGetTransactionsResponse() => $_has(3);
  void clearGetTransactionsResponse() => clearField(6);
}

class GetAccountStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAccountStateRequest', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'address', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetAccountStateRequest._() : super();
  factory GetAccountStateRequest() => create();
  factory GetAccountStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAccountStateRequest clone() => GetAccountStateRequest()..mergeFromMessage(this);
  GetAccountStateRequest copyWith(void Function(GetAccountStateRequest) updates) => super.copyWith((message) => updates(message as GetAccountStateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountStateRequest create() => GetAccountStateRequest._();
  GetAccountStateRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountStateRequest> createRepeated() => $pb.PbList<GetAccountStateRequest>();
  static GetAccountStateRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetAccountStateRequest _defaultInstance;

  $core.List<$core.int> get address => $_getN(0);
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasAddress() => $_has(0);
  void clearAddress() => clearField(1);
}

class GetAccountStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAccountStateResponse', package: const $pb.PackageName('types'))
    ..a<$10.AccountStateWithProof>(1, 'accountStateWithProof', $pb.PbFieldType.OM, $10.AccountStateWithProof.getDefault, $10.AccountStateWithProof.create)
    ..hasRequiredFields = false
  ;

  GetAccountStateResponse._() : super();
  factory GetAccountStateResponse() => create();
  factory GetAccountStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAccountStateResponse clone() => GetAccountStateResponse()..mergeFromMessage(this);
  GetAccountStateResponse copyWith(void Function(GetAccountStateResponse) updates) => super.copyWith((message) => updates(message as GetAccountStateResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountStateResponse create() => GetAccountStateResponse._();
  GetAccountStateResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountStateResponse> createRepeated() => $pb.PbList<GetAccountStateResponse>();
  static GetAccountStateResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetAccountStateResponse _defaultInstance;

  $10.AccountStateWithProof get accountStateWithProof => $_getN(0);
  set accountStateWithProof($10.AccountStateWithProof v) { setField(1, v); }
  $core.bool hasAccountStateWithProof() => $_has(0);
  void clearAccountStateWithProof() => clearField(1);
}

class GetAccountTransactionBySequenceNumberRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAccountTransactionBySequenceNumberRequest', package: const $pb.PackageName('types'))
    ..a<$core.List<$core.int>>(1, 'account', $pb.PbFieldType.OY)
    ..a<Int64>(2, 'sequenceNumber', $pb.PbFieldType.OU6, Int64.ZERO)
    ..aOB(3, 'fetchEvents')
    ..hasRequiredFields = false
  ;

  GetAccountTransactionBySequenceNumberRequest._() : super();
  factory GetAccountTransactionBySequenceNumberRequest() => create();
  factory GetAccountTransactionBySequenceNumberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountTransactionBySequenceNumberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAccountTransactionBySequenceNumberRequest clone() => GetAccountTransactionBySequenceNumberRequest()..mergeFromMessage(this);
  GetAccountTransactionBySequenceNumberRequest copyWith(void Function(GetAccountTransactionBySequenceNumberRequest) updates) => super.copyWith((message) => updates(message as GetAccountTransactionBySequenceNumberRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountTransactionBySequenceNumberRequest create() => GetAccountTransactionBySequenceNumberRequest._();
  GetAccountTransactionBySequenceNumberRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountTransactionBySequenceNumberRequest> createRepeated() => $pb.PbList<GetAccountTransactionBySequenceNumberRequest>();
  static GetAccountTransactionBySequenceNumberRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetAccountTransactionBySequenceNumberRequest _defaultInstance;

  $core.List<$core.int> get account => $_getN(0);
  set account($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  Int64 get sequenceNumber => $_getI64(1);
  set sequenceNumber(Int64 v) { $_setInt64(1, v); }
  $core.bool hasSequenceNumber() => $_has(1);
  void clearSequenceNumber() => clearField(2);

  $core.bool get fetchEvents => $_get(2, false);
  set fetchEvents($core.bool v) { $_setBool(2, v); }
  $core.bool hasFetchEvents() => $_has(2);
  void clearFetchEvents() => clearField(3);
}

class GetAccountTransactionBySequenceNumberResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAccountTransactionBySequenceNumberResponse', package: const $pb.PackageName('types'))
    ..a<$11.SignedTransactionWithProof>(2, 'signedTransactionWithProof', $pb.PbFieldType.OM, $11.SignedTransactionWithProof.getDefault, $11.SignedTransactionWithProof.create)
    ..a<$10.AccountStateWithProof>(3, 'proofOfCurrentSequenceNumber', $pb.PbFieldType.OM, $10.AccountStateWithProof.getDefault, $10.AccountStateWithProof.create)
    ..hasRequiredFields = false
  ;

  GetAccountTransactionBySequenceNumberResponse._() : super();
  factory GetAccountTransactionBySequenceNumberResponse() => create();
  factory GetAccountTransactionBySequenceNumberResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountTransactionBySequenceNumberResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAccountTransactionBySequenceNumberResponse clone() => GetAccountTransactionBySequenceNumberResponse()..mergeFromMessage(this);
  GetAccountTransactionBySequenceNumberResponse copyWith(void Function(GetAccountTransactionBySequenceNumberResponse) updates) => super.copyWith((message) => updates(message as GetAccountTransactionBySequenceNumberResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountTransactionBySequenceNumberResponse create() => GetAccountTransactionBySequenceNumberResponse._();
  GetAccountTransactionBySequenceNumberResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountTransactionBySequenceNumberResponse> createRepeated() => $pb.PbList<GetAccountTransactionBySequenceNumberResponse>();
  static GetAccountTransactionBySequenceNumberResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetAccountTransactionBySequenceNumberResponse _defaultInstance;

  $11.SignedTransactionWithProof get signedTransactionWithProof => $_getN(0);
  set signedTransactionWithProof($11.SignedTransactionWithProof v) { setField(2, v); }
  $core.bool hasSignedTransactionWithProof() => $_has(0);
  void clearSignedTransactionWithProof() => clearField(2);

  $10.AccountStateWithProof get proofOfCurrentSequenceNumber => $_getN(1);
  set proofOfCurrentSequenceNumber($10.AccountStateWithProof v) { setField(3, v); }
  $core.bool hasProofOfCurrentSequenceNumber() => $_has(1);
  void clearProofOfCurrentSequenceNumber() => clearField(3);
}

class GetEventsByEventAccessPathRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetEventsByEventAccessPathRequest', package: const $pb.PackageName('types'))
    ..a<$5.AccessPath>(1, 'accessPath', $pb.PbFieldType.OM, $5.AccessPath.getDefault, $5.AccessPath.create)
    ..a<Int64>(2, 'startEventSeqNum', $pb.PbFieldType.OU6, Int64.ZERO)
    ..aOB(3, 'ascending')
    ..a<Int64>(4, 'limit', $pb.PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetEventsByEventAccessPathRequest._() : super();
  factory GetEventsByEventAccessPathRequest() => create();
  factory GetEventsByEventAccessPathRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEventsByEventAccessPathRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetEventsByEventAccessPathRequest clone() => GetEventsByEventAccessPathRequest()..mergeFromMessage(this);
  GetEventsByEventAccessPathRequest copyWith(void Function(GetEventsByEventAccessPathRequest) updates) => super.copyWith((message) => updates(message as GetEventsByEventAccessPathRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEventsByEventAccessPathRequest create() => GetEventsByEventAccessPathRequest._();
  GetEventsByEventAccessPathRequest createEmptyInstance() => create();
  static $pb.PbList<GetEventsByEventAccessPathRequest> createRepeated() => $pb.PbList<GetEventsByEventAccessPathRequest>();
  static GetEventsByEventAccessPathRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetEventsByEventAccessPathRequest _defaultInstance;

  $5.AccessPath get accessPath => $_getN(0);
  set accessPath($5.AccessPath v) { setField(1, v); }
  $core.bool hasAccessPath() => $_has(0);
  void clearAccessPath() => clearField(1);

  Int64 get startEventSeqNum => $_getI64(1);
  set startEventSeqNum(Int64 v) { $_setInt64(1, v); }
  $core.bool hasStartEventSeqNum() => $_has(1);
  void clearStartEventSeqNum() => clearField(2);

  $core.bool get ascending => $_get(2, false);
  set ascending($core.bool v) { $_setBool(2, v); }
  $core.bool hasAscending() => $_has(2);
  void clearAscending() => clearField(3);

  Int64 get limit => $_getI64(3);
  set limit(Int64 v) { $_setInt64(3, v); }
  $core.bool hasLimit() => $_has(3);
  void clearLimit() => clearField(4);
}

class GetEventsByEventAccessPathResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetEventsByEventAccessPathResponse', package: const $pb.PackageName('types'))
    ..pc<$6.EventWithProof>(1, 'eventsWithProof', $pb.PbFieldType.PM,$6.EventWithProof.create)
    ..a<$10.AccountStateWithProof>(2, 'proofOfLatestEvent', $pb.PbFieldType.OM, $10.AccountStateWithProof.getDefault, $10.AccountStateWithProof.create)
    ..hasRequiredFields = false
  ;

  GetEventsByEventAccessPathResponse._() : super();
  factory GetEventsByEventAccessPathResponse() => create();
  factory GetEventsByEventAccessPathResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEventsByEventAccessPathResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetEventsByEventAccessPathResponse clone() => GetEventsByEventAccessPathResponse()..mergeFromMessage(this);
  GetEventsByEventAccessPathResponse copyWith(void Function(GetEventsByEventAccessPathResponse) updates) => super.copyWith((message) => updates(message as GetEventsByEventAccessPathResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEventsByEventAccessPathResponse create() => GetEventsByEventAccessPathResponse._();
  GetEventsByEventAccessPathResponse createEmptyInstance() => create();
  static $pb.PbList<GetEventsByEventAccessPathResponse> createRepeated() => $pb.PbList<GetEventsByEventAccessPathResponse>();
  static GetEventsByEventAccessPathResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetEventsByEventAccessPathResponse _defaultInstance;

  $core.List<$6.EventWithProof> get eventsWithProof => $_getList(0);

  $10.AccountStateWithProof get proofOfLatestEvent => $_getN(1);
  set proofOfLatestEvent($10.AccountStateWithProof v) { setField(2, v); }
  $core.bool hasProofOfLatestEvent() => $_has(1);
  void clearProofOfLatestEvent() => clearField(2);
}

class GetTransactionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetTransactionsRequest', package: const $pb.PackageName('types'))
    ..a<Int64>(1, 'startVersion', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Int64>(2, 'limit', $pb.PbFieldType.OU6, Int64.ZERO)
    ..aOB(3, 'fetchEvents')
    ..hasRequiredFields = false
  ;

  GetTransactionsRequest._() : super();
  factory GetTransactionsRequest() => create();
  factory GetTransactionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetTransactionsRequest clone() => GetTransactionsRequest()..mergeFromMessage(this);
  GetTransactionsRequest copyWith(void Function(GetTransactionsRequest) updates) => super.copyWith((message) => updates(message as GetTransactionsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTransactionsRequest create() => GetTransactionsRequest._();
  GetTransactionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetTransactionsRequest> createRepeated() => $pb.PbList<GetTransactionsRequest>();
  static GetTransactionsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetTransactionsRequest _defaultInstance;

  Int64 get startVersion => $_getI64(0);
  set startVersion(Int64 v) { $_setInt64(0, v); }
  $core.bool hasStartVersion() => $_has(0);
  void clearStartVersion() => clearField(1);

  Int64 get limit => $_getI64(1);
  set limit(Int64 v) { $_setInt64(1, v); }
  $core.bool hasLimit() => $_has(1);
  void clearLimit() => clearField(2);

  $core.bool get fetchEvents => $_get(2, false);
  set fetchEvents($core.bool v) { $_setBool(2, v); }
  $core.bool hasFetchEvents() => $_has(2);
  void clearFetchEvents() => clearField(3);
}

class GetTransactionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetTransactionsResponse', package: const $pb.PackageName('types'))
    ..a<$11.TransactionListWithProof>(1, 'txnListWithProof', $pb.PbFieldType.OM, $11.TransactionListWithProof.getDefault, $11.TransactionListWithProof.create)
    ..hasRequiredFields = false
  ;

  GetTransactionsResponse._() : super();
  factory GetTransactionsResponse() => create();
  factory GetTransactionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetTransactionsResponse clone() => GetTransactionsResponse()..mergeFromMessage(this);
  GetTransactionsResponse copyWith(void Function(GetTransactionsResponse) updates) => super.copyWith((message) => updates(message as GetTransactionsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTransactionsResponse create() => GetTransactionsResponse._();
  GetTransactionsResponse createEmptyInstance() => create();
  static $pb.PbList<GetTransactionsResponse> createRepeated() => $pb.PbList<GetTransactionsResponse>();
  static GetTransactionsResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetTransactionsResponse _defaultInstance;

  $11.TransactionListWithProof get txnListWithProof => $_getN(0);
  set txnListWithProof($11.TransactionListWithProof v) { setField(1, v); }
  $core.bool hasTxnListWithProof() => $_has(0);
  void clearTxnListWithProof() => clearField(1);
}

