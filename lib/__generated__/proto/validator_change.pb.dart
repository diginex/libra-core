///
//  Generated code. Do not modify.
//  source: proto/validator_change.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ledger_info.pb.dart' as $9;
import 'events.pb.dart' as $7;

class ValidatorChangeEventWithProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ValidatorChangeEventWithProof', package: const $pb.PackageName('types'))
    ..a<$9.LedgerInfoWithSignatures>(1, 'ledgerInfoWithSigs', $pb.PbFieldType.OM, $9.LedgerInfoWithSignatures.getDefault, $9.LedgerInfoWithSignatures.create)
    ..a<$7.EventWithProof>(2, 'eventWithProof', $pb.PbFieldType.OM, $7.EventWithProof.getDefault, $7.EventWithProof.create)
    ..hasRequiredFields = false
  ;

  ValidatorChangeEventWithProof._() : super();
  factory ValidatorChangeEventWithProof() => create();
  factory ValidatorChangeEventWithProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatorChangeEventWithProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ValidatorChangeEventWithProof clone() => ValidatorChangeEventWithProof()..mergeFromMessage(this);
  ValidatorChangeEventWithProof copyWith(void Function(ValidatorChangeEventWithProof) updates) => super.copyWith((message) => updates(message as ValidatorChangeEventWithProof));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidatorChangeEventWithProof create() => ValidatorChangeEventWithProof._();
  ValidatorChangeEventWithProof createEmptyInstance() => create();
  static $pb.PbList<ValidatorChangeEventWithProof> createRepeated() => $pb.PbList<ValidatorChangeEventWithProof>();
  static ValidatorChangeEventWithProof getDefault() => _defaultInstance ??= create()..freeze();
  static ValidatorChangeEventWithProof _defaultInstance;

  $9.LedgerInfoWithSignatures get ledgerInfoWithSigs => $_getN(0);
  set ledgerInfoWithSigs($9.LedgerInfoWithSignatures v) { setField(1, v); }
  $core.bool hasLedgerInfoWithSigs() => $_has(0);
  void clearLedgerInfoWithSigs() => clearField(1);

  $7.EventWithProof get eventWithProof => $_getN(1);
  set eventWithProof($7.EventWithProof v) { setField(2, v); }
  $core.bool hasEventWithProof() => $_has(1);
  void clearEventWithProof() => clearField(2);
}

