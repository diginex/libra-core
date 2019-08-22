///
//  Generated code. Do not modify.
//  source: proto/mempool.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AddTransactionWithValidationRequest$json = const {
  '1': 'AddTransactionWithValidationRequest',
  '2': const [
    const {'1': 'signed_txn', '3': 1, '4': 1, '5': 11, '6': '.types.SignedTransaction', '10': 'signedTxn'},
    const {'1': 'max_gas_cost', '3': 2, '4': 1, '5': 4, '10': 'maxGasCost'},
    const {'1': 'latest_sequence_number', '3': 3, '4': 1, '5': 4, '10': 'latestSequenceNumber'},
    const {'1': 'account_balance', '3': 4, '4': 1, '5': 4, '10': 'accountBalance'},
  ],
};

const AddTransactionWithValidationResponse$json = const {
  '1': 'AddTransactionWithValidationResponse',
  '2': const [
    const {'1': 'current_version', '3': 1, '4': 1, '5': 4, '10': 'currentVersion'},
    const {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.mempool.MempoolAddTransactionStatus', '10': 'status'},
  ],
};

const GetBlockRequest$json = const {
  '1': 'GetBlockRequest',
  '2': const [
    const {'1': 'max_block_size', '3': 1, '4': 1, '5': 4, '10': 'maxBlockSize'},
    const {'1': 'transactions', '3': 2, '4': 3, '5': 11, '6': '.mempool.TransactionExclusion', '10': 'transactions'},
  ],
};

const GetBlockResponse$json = const {
  '1': 'GetBlockResponse',
  '2': const [
    const {'1': 'block', '3': 1, '4': 1, '5': 11, '6': '.types.SignedTransactionsBlock', '10': 'block'},
  ],
};

const TransactionExclusion$json = const {
  '1': 'TransactionExclusion',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'sequence_number', '3': 2, '4': 1, '5': 4, '10': 'sequenceNumber'},
  ],
};

const CommitTransactionsRequest$json = const {
  '1': 'CommitTransactionsRequest',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.mempool.CommittedTransaction', '10': 'transactions'},
    const {'1': 'block_timestamp_usecs', '3': 2, '4': 1, '5': 4, '10': 'blockTimestampUsecs'},
  ],
};

const CommitTransactionsResponse$json = const {
  '1': 'CommitTransactionsResponse',
};

const CommittedTransaction$json = const {
  '1': 'CommittedTransaction',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'sequence_number', '3': 2, '4': 1, '5': 4, '10': 'sequenceNumber'},
    const {'1': 'is_rejected', '3': 3, '4': 1, '5': 8, '10': 'isRejected'},
  ],
};

const HealthCheckRequest$json = const {
  '1': 'HealthCheckRequest',
};

const HealthCheckResponse$json = const {
  '1': 'HealthCheckResponse',
  '2': const [
    const {'1': 'is_healthy', '3': 1, '4': 1, '5': 8, '10': 'isHealthy'},
  ],
};

