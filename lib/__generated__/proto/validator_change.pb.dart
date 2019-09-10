///
//  Generated code. Do not modify.
//  source: proto/validator_change.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ledger_info.pb.dart' as $8;
import 'events.pb.dart' as $5;

class ValidatorChangeEventWithProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ValidatorChangeEventWithProof', package: const $pb.PackageName('types'))
    ..a<$8.LedgerInfoWithSignatures>(1, 'ledgerInfoWithSigs', $pb.PbFieldType.OM, $8.LedgerInfoWithSignatures.getDefault, $8.LedgerInfoWithSignatures.create)
    ..a<$5.EventWithProof>(2, 'eventWithProof', $pb.PbFieldType.OM, $5.EventWithProof.getDefault, $5.EventWithProof.create)
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

  $8.LedgerInfoWithSignatures get ledgerInfoWithSigs => $_getN(0);
  set ledgerInfoWithSigs($8.LedgerInfoWithSignatures v) { setField(1, v); }
  $core.bool hasLedgerInfoWithSigs() => $_has(0);
  void clearLedgerInfoWithSigs() => clearField(1);

  $5.EventWithProof get eventWithProof => $_getN(1);
  set eventWithProof($5.EventWithProof v) { setField(2, v); }
  $core.bool hasEventWithProof() => $_has(1);
  void clearEventWithProof() => clearField(2);
}

