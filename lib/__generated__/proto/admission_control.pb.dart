///
//  Generated code. Do not modify.
//  source: proto/admission_control.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'transaction.pb.dart' as $12;
import 'vm_errors.pb.dart' as $14;
import 'mempool_status.pb.dart' as $15;

import 'admission_control.pbenum.dart';

export 'admission_control.pbenum.dart';

class SubmitTransactionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitTransactionRequest', package: const $pb.PackageName('admission_control'))
    ..a<$12.SignedTransaction>(1, 'signedTxn', $pb.PbFieldType.OM, $12.SignedTransaction.getDefault, $12.SignedTransaction.create)
    ..hasRequiredFields = false
  ;

  SubmitTransactionRequest._() : super();
  factory SubmitTransactionRequest() => create();
  factory SubmitTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SubmitTransactionRequest clone() => SubmitTransactionRequest()..mergeFromMessage(this);
  SubmitTransactionRequest copyWith(void Function(SubmitTransactionRequest) updates) => super.copyWith((message) => updates(message as SubmitTransactionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionRequest create() => SubmitTransactionRequest._();
  SubmitTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<SubmitTransactionRequest> createRepeated() => $pb.PbList<SubmitTransactionRequest>();
  static SubmitTransactionRequest getDefault() => _defaultInstance ??= create()..freeze();
  static SubmitTransactionRequest _defaultInstance;

  $12.SignedTransaction get signedTxn => $_getN(0);
  set signedTxn($12.SignedTransaction v) { setField(1, v); }
  $core.bool hasSignedTxn() => $_has(0);
  void clearSignedTxn() => clearField(1);
}

class AdmissionControlStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdmissionControlStatus', package: const $pb.PackageName('admission_control'))
    ..e<AdmissionControlStatusCode>(1, 'code', $pb.PbFieldType.OE, AdmissionControlStatusCode.Accepted, AdmissionControlStatusCode.valueOf, AdmissionControlStatusCode.values)
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  AdmissionControlStatus._() : super();
  factory AdmissionControlStatus() => create();
  factory AdmissionControlStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdmissionControlStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdmissionControlStatus clone() => AdmissionControlStatus()..mergeFromMessage(this);
  AdmissionControlStatus copyWith(void Function(AdmissionControlStatus) updates) => super.copyWith((message) => updates(message as AdmissionControlStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdmissionControlStatus create() => AdmissionControlStatus._();
  AdmissionControlStatus createEmptyInstance() => create();
  static $pb.PbList<AdmissionControlStatus> createRepeated() => $pb.PbList<AdmissionControlStatus>();
  static AdmissionControlStatus getDefault() => _defaultInstance ??= create()..freeze();
  static AdmissionControlStatus _defaultInstance;

  AdmissionControlStatusCode get code => $_getN(0);
  set code(AdmissionControlStatusCode v) { setField(1, v); }
  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  $core.String get message => $_getS(1, '');
  set message($core.String v) { $_setString(1, v); }
  $core.bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

enum SubmitTransactionResponse_Status {
  vmStatus, 
  acStatus, 
  mempoolStatus, 
  notSet
}

class SubmitTransactionResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SubmitTransactionResponse_Status> _SubmitTransactionResponse_StatusByTag = {
    1 : SubmitTransactionResponse_Status.vmStatus,
    2 : SubmitTransactionResponse_Status.acStatus,
    3 : SubmitTransactionResponse_Status.mempoolStatus,
    0 : SubmitTransactionResponse_Status.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitTransactionResponse', package: const $pb.PackageName('admission_control'))
    ..oo(0, [1, 2, 3])
    ..a<$14.VMStatus>(1, 'vmStatus', $pb.PbFieldType.OM, $14.VMStatus.getDefault, $14.VMStatus.create)
    ..a<AdmissionControlStatus>(2, 'acStatus', $pb.PbFieldType.OM, AdmissionControlStatus.getDefault, AdmissionControlStatus.create)
    ..a<$15.MempoolAddTransactionStatus>(3, 'mempoolStatus', $pb.PbFieldType.OM, $15.MempoolAddTransactionStatus.getDefault, $15.MempoolAddTransactionStatus.create)
    ..a<$core.List<$core.int>>(4, 'validatorId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SubmitTransactionResponse._() : super();
  factory SubmitTransactionResponse() => create();
  factory SubmitTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SubmitTransactionResponse clone() => SubmitTransactionResponse()..mergeFromMessage(this);
  SubmitTransactionResponse copyWith(void Function(SubmitTransactionResponse) updates) => super.copyWith((message) => updates(message as SubmitTransactionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionResponse create() => SubmitTransactionResponse._();
  SubmitTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<SubmitTransactionResponse> createRepeated() => $pb.PbList<SubmitTransactionResponse>();
  static SubmitTransactionResponse getDefault() => _defaultInstance ??= create()..freeze();
  static SubmitTransactionResponse _defaultInstance;

  SubmitTransactionResponse_Status whichStatus() => _SubmitTransactionResponse_StatusByTag[$_whichOneof(0)];
  void clearStatus() => clearField($_whichOneof(0));

  $14.VMStatus get vmStatus => $_getN(0);
  set vmStatus($14.VMStatus v) { setField(1, v); }
  $core.bool hasVmStatus() => $_has(0);
  void clearVmStatus() => clearField(1);

  AdmissionControlStatus get acStatus => $_getN(1);
  set acStatus(AdmissionControlStatus v) { setField(2, v); }
  $core.bool hasAcStatus() => $_has(1);
  void clearAcStatus() => clearField(2);

  $15.MempoolAddTransactionStatus get mempoolStatus => $_getN(2);
  set mempoolStatus($15.MempoolAddTransactionStatus v) { setField(3, v); }
  $core.bool hasMempoolStatus() => $_has(2);
  void clearMempoolStatus() => clearField(3);

  $core.List<$core.int> get validatorId => $_getN(3);
  set validatorId($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasValidatorId() => $_has(3);
  void clearValidatorId() => clearField(4);
}

