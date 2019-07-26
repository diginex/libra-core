///
//  Generated code. Do not modify.
//  source: proto/transaction.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const WriteOpType$json = const {
  '1': 'WriteOpType',
  '2': const [
    const {'1': 'Write', '2': 0},
    const {'1': 'Delete', '2': 1},
  ],
};

const RawTransaction$json = const {
  '1': 'RawTransaction',
  '2': const [
    const {'1': 'sender_account', '3': 1, '4': 1, '5': 12, '10': 'senderAccount'},
    const {
      '1': 'sequence_number',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'sequenceNumber',
    },
    const {'1': 'program', '3': 3, '4': 1, '5': 11, '6': '.types.Program', '9': 0, '10': 'program'},
    const {'1': 'write_set', '3': 4, '4': 1, '5': 11, '6': '.types.WriteSet', '9': 0, '10': 'writeSet'},
    const {
      '1': 'max_gas_amount',
      '3': 5,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'maxGasAmount',
    },
    const {
      '1': 'gas_unit_price',
      '3': 6,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'gasUnitPrice',
    },
    const {
      '1': 'expiration_time',
      '3': 7,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'expirationTime',
    },
  ],
  '8': const [
    const {'1': 'payload'},
  ],
};

const Program$json = const {
  '1': 'Program',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 12, '10': 'code'},
    const {'1': 'arguments', '3': 2, '4': 3, '5': 11, '6': '.types.TransactionArgument', '10': 'arguments'},
    const {'1': 'modules', '3': 3, '4': 3, '5': 12, '10': 'modules'},
  ],
};

const TransactionArgument$json = const {
  '1': 'TransactionArgument',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.types.TransactionArgument.ArgType', '10': 'type'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
  '4': const [TransactionArgument_ArgType$json],
};

const TransactionArgument_ArgType$json = const {
  '1': 'ArgType',
  '2': const [
    const {'1': 'U64', '2': 0},
    const {'1': 'ADDRESS', '2': 1},
    const {'1': 'STRING', '2': 2},
    const {'1': 'BYTEARRAY', '2': 3},
  ],
};

const SignedTransaction$json = const {
  '1': 'SignedTransaction',
  '2': const [
    const {'1': 'raw_txn_bytes', '3': 1, '4': 1, '5': 12, '10': 'rawTxnBytes'},
    const {'1': 'sender_public_key', '3': 2, '4': 1, '5': 12, '10': 'senderPublicKey'},
    const {'1': 'sender_signature', '3': 3, '4': 1, '5': 12, '10': 'senderSignature'},
  ],
};

const SignedTransactionWithProof$json = const {
  '1': 'SignedTransactionWithProof',
  '2': const [
    const {
      '1': 'version',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'version',
    },
    const {'1': 'signed_transaction', '3': 2, '4': 1, '5': 11, '6': '.types.SignedTransaction', '10': 'signedTransaction'},
    const {'1': 'proof', '3': 3, '4': 1, '5': 11, '6': '.types.SignedTransactionProof', '10': 'proof'},
    const {'1': 'events', '3': 4, '4': 1, '5': 11, '6': '.types.EventsList', '10': 'events'},
  ],
};

const SignedTransactionsBlock$json = const {
  '1': 'SignedTransactionsBlock',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.types.SignedTransaction', '10': 'transactions'},
    const {'1': 'validator_public_key', '3': 2, '4': 1, '5': 12, '10': 'validatorPublicKey'},
    const {'1': 'validator_signature', '3': 3, '4': 1, '5': 12, '10': 'validatorSignature'},
  ],
};

const WriteSet$json = const {
  '1': 'WriteSet',
  '2': const [
    const {'1': 'write_set', '3': 1, '4': 3, '5': 11, '6': '.types.WriteOp', '10': 'writeSet'},
  ],
};

const WriteOp$json = const {
  '1': 'WriteOp',
  '2': const [
    const {'1': 'access_path', '3': 1, '4': 1, '5': 11, '6': '.types.AccessPath', '10': 'accessPath'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.types.WriteOpType', '10': 'type'},
  ],
};

const AccountState$json = const {
  '1': 'AccountState',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'blob', '3': 2, '4': 1, '5': 12, '10': 'blob'},
  ],
};

const TransactionToCommit$json = const {
  '1': 'TransactionToCommit',
  '2': const [
    const {'1': 'signed_txn', '3': 1, '4': 1, '5': 11, '6': '.types.SignedTransaction', '10': 'signedTxn'},
    const {'1': 'account_states', '3': 2, '4': 3, '5': 11, '6': '.types.AccountState', '10': 'accountStates'},
    const {'1': 'events', '3': 3, '4': 3, '5': 11, '6': '.types.Event', '10': 'events'},
    const {
      '1': 'gas_used',
      '3': 4,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'gasUsed',
    },
  ],
};

const TransactionListWithProof$json = const {
  '1': 'TransactionListWithProof',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.types.SignedTransaction', '10': 'transactions'},
    const {'1': 'infos', '3': 2, '4': 3, '5': 11, '6': '.types.TransactionInfo', '10': 'infos'},
    const {'1': 'events_for_versions', '3': 3, '4': 1, '5': 11, '6': '.types.EventsForVersions', '10': 'eventsForVersions'},
    const {'1': 'first_transaction_version', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.UInt64Value', '10': 'firstTransactionVersion'},
    const {'1': 'proof_of_first_transaction', '3': 5, '4': 1, '5': 11, '6': '.types.AccumulatorProof', '10': 'proofOfFirstTransaction'},
    const {'1': 'proof_of_last_transaction', '3': 6, '4': 1, '5': 11, '6': '.types.AccumulatorProof', '10': 'proofOfLastTransaction'},
  ],
};

