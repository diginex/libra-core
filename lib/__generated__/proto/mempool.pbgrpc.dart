///
//  Generated code. Do not modify.
//  source: proto/mempool.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core show int, String, List;

import 'package:grpc/service_api.dart' as $grpc;
import 'mempool.pb.dart' as $2;
export 'mempool.pb.dart';

class MempoolClient extends $grpc.Client {
  static final _$addTransactionWithValidation = $grpc.ClientMethod<
          $2.AddTransactionWithValidationRequest,
          $2.AddTransactionWithValidationResponse>(
      '/mempool.Mempool/AddTransactionWithValidation',
      ($2.AddTransactionWithValidationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.AddTransactionWithValidationResponse.fromBuffer(value));
  static final _$getBlock =
      $grpc.ClientMethod<$2.GetBlockRequest, $2.GetBlockResponse>(
          '/mempool.Mempool/GetBlock',
          ($2.GetBlockRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetBlockResponse.fromBuffer(value));
  static final _$commitTransactions = $grpc.ClientMethod<
          $2.CommitTransactionsRequest, $2.CommitTransactionsResponse>(
      '/mempool.Mempool/CommitTransactions',
      ($2.CommitTransactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CommitTransactionsResponse.fromBuffer(value));
  static final _$healthCheck =
      $grpc.ClientMethod<$2.HealthCheckRequest, $2.HealthCheckResponse>(
          '/mempool.Mempool/HealthCheck',
          ($2.HealthCheckRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.HealthCheckResponse.fromBuffer(value));

  MempoolClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$2.AddTransactionWithValidationResponse>
      addTransactionWithValidation(
          $2.AddTransactionWithValidationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addTransactionWithValidation, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.GetBlockResponse> getBlock($2.GetBlockRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getBlock, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CommitTransactionsResponse> commitTransactions(
      $2.CommitTransactionsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$commitTransactions, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.HealthCheckResponse> healthCheck(
      $2.HealthCheckRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$healthCheck, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class MempoolServiceBase extends $grpc.Service {
  $core.String get $name => 'mempool.Mempool';

  MempoolServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.AddTransactionWithValidationRequest,
            $2.AddTransactionWithValidationResponse>(
        'AddTransactionWithValidation',
        addTransactionWithValidation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AddTransactionWithValidationRequest.fromBuffer(value),
        ($2.AddTransactionWithValidationResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetBlockRequest, $2.GetBlockResponse>(
        'GetBlock',
        getBlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetBlockRequest.fromBuffer(value),
        ($2.GetBlockResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CommitTransactionsRequest,
            $2.CommitTransactionsResponse>(
        'CommitTransactions',
        commitTransactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CommitTransactionsRequest.fromBuffer(value),
        ($2.CommitTransactionsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.HealthCheckRequest, $2.HealthCheckResponse>(
            'HealthCheck',
            healthCheck_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.HealthCheckRequest.fromBuffer(value),
            ($2.HealthCheckResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.AddTransactionWithValidationResponse>
      addTransactionWithValidation_Pre($grpc.ServiceCall call,
          $async.Future<$2.AddTransactionWithValidationRequest> request) async {
    return addTransactionWithValidation(call, await request);
  }

  $async.Future<$2.GetBlockResponse> getBlock_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetBlockRequest> request) async {
    return getBlock(call, await request);
  }

  $async.Future<$2.CommitTransactionsResponse> commitTransactions_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CommitTransactionsRequest> request) async {
    return commitTransactions(call, await request);
  }

  $async.Future<$2.HealthCheckResponse> healthCheck_Pre($grpc.ServiceCall call,
      $async.Future<$2.HealthCheckRequest> request) async {
    return healthCheck(call, await request);
  }

  $async.Future<$2.AddTransactionWithValidationResponse>
      addTransactionWithValidation($grpc.ServiceCall call,
          $2.AddTransactionWithValidationRequest request);
  $async.Future<$2.GetBlockResponse> getBlock(
      $grpc.ServiceCall call, $2.GetBlockRequest request);
  $async.Future<$2.CommitTransactionsResponse> commitTransactions(
      $grpc.ServiceCall call, $2.CommitTransactionsRequest request);
  $async.Future<$2.HealthCheckResponse> healthCheck(
      $grpc.ServiceCall call, $2.HealthCheckRequest request);
}
