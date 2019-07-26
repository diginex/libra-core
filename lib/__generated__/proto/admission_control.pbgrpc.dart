///
//  Generated code. Do not modify.
//  source: proto/admission_control.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core show int, String, List;

import 'package:grpc/service_api.dart' as $grpc;
import 'admission_control.pb.dart' as $0;
import 'get_with_proof.pb.dart' as $1;
export 'admission_control.pb.dart';

class AdmissionControlClient extends $grpc.Client {
  static final _$submitTransaction = $grpc.ClientMethod<
          $0.SubmitTransactionRequest, $0.SubmitTransactionResponse>(
      '/admission_control.AdmissionControl/SubmitTransaction',
      ($0.SubmitTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SubmitTransactionResponse.fromBuffer(value));
  static final _$updateToLatestLedger = $grpc.ClientMethod<
          $1.UpdateToLatestLedgerRequest, $1.UpdateToLatestLedgerResponse>(
      '/admission_control.AdmissionControl/UpdateToLatestLedger',
      ($1.UpdateToLatestLedgerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.UpdateToLatestLedgerResponse.fromBuffer(value));

  AdmissionControlClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.SubmitTransactionResponse> submitTransaction(
      $0.SubmitTransactionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$submitTransaction, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.UpdateToLatestLedgerResponse> updateToLatestLedger(
      $1.UpdateToLatestLedgerRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateToLatestLedger, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AdmissionControlServiceBase extends $grpc.Service {
  $core.String get $name => 'admission_control.AdmissionControl';

  AdmissionControlServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SubmitTransactionRequest,
            $0.SubmitTransactionResponse>(
        'SubmitTransaction',
        submitTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SubmitTransactionRequest.fromBuffer(value),
        ($0.SubmitTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateToLatestLedgerRequest,
            $1.UpdateToLatestLedgerResponse>(
        'UpdateToLatestLedger',
        updateToLatestLedger_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateToLatestLedgerRequest.fromBuffer(value),
        ($1.UpdateToLatestLedgerResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SubmitTransactionResponse> submitTransaction_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SubmitTransactionRequest> request) async {
    return submitTransaction(call, await request);
  }

  $async.Future<$1.UpdateToLatestLedgerResponse> updateToLatestLedger_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateToLatestLedgerRequest> request) async {
    return updateToLatestLedger(call, await request);
  }

  $async.Future<$0.SubmitTransactionResponse> submitTransaction(
      $grpc.ServiceCall call, $0.SubmitTransactionRequest request);
  $async.Future<$1.UpdateToLatestLedgerResponse> updateToLatestLedger(
      $grpc.ServiceCall call, $1.UpdateToLatestLedgerRequest request);
}
