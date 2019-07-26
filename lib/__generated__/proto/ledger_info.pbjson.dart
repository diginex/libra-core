///
//  Generated code. Do not modify.
//  source: proto/ledger_info.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const LedgerInfo$json = const {
  '1': 'LedgerInfo',
  '2': const [
    const {
      '1': 'version',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'version',
    },
    const {'1': 'transaction_accumulator_hash', '3': 2, '4': 1, '5': 12, '10': 'transactionAccumulatorHash'},
    const {'1': 'consensus_data_hash', '3': 3, '4': 1, '5': 12, '10': 'consensusDataHash'},
    const {'1': 'consensus_block_id', '3': 4, '4': 1, '5': 12, '10': 'consensusBlockId'},
    const {
      '1': 'epoch_num',
      '3': 5,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'epochNum',
    },
    const {
      '1': 'timestamp_usecs',
      '3': 6,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'timestampUsecs',
    },
  ],
};

const LedgerInfoWithSignatures$json = const {
  '1': 'LedgerInfoWithSignatures',
  '2': const [
    const {'1': 'signatures', '3': 1, '4': 3, '5': 11, '6': '.types.ValidatorSignature', '10': 'signatures'},
    const {'1': 'ledger_info', '3': 2, '4': 1, '5': 11, '6': '.types.LedgerInfo', '10': 'ledgerInfo'},
  ],
};

const ValidatorSignature$json = const {
  '1': 'ValidatorSignature',
  '2': const [
    const {'1': 'validator_id', '3': 1, '4': 1, '5': 12, '10': 'validatorId'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

