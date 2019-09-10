///
//  Generated code. Do not modify.
//  source: proto/events.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'sequence_number', '3': 2, '4': 1, '5': 4, '10': 'sequenceNumber'},
    const {'1': 'event_data', '3': 3, '4': 1, '5': 12, '10': 'eventData'},
  ],
};

const EventWithProof$json = const {
  '1': 'EventWithProof',
  '2': const [
    const {'1': 'transaction_version', '3': 1, '4': 1, '5': 4, '10': 'transactionVersion'},
    const {'1': 'event_index', '3': 2, '4': 1, '5': 4, '10': 'eventIndex'},
    const {'1': 'event', '3': 3, '4': 1, '5': 11, '6': '.types.Event', '10': 'event'},
    const {'1': 'proof', '3': 4, '4': 1, '5': 11, '6': '.types.EventProof', '10': 'proof'},
  ],
};

const EventsList$json = const {
  '1': 'EventsList',
  '2': const [
    const {'1': 'events', '3': 1, '4': 3, '5': 11, '6': '.types.Event', '10': 'events'},
  ],
};

const EventsForVersions$json = const {
  '1': 'EventsForVersions',
  '2': const [
    const {'1': 'events_for_version', '3': 1, '4': 3, '5': 11, '6': '.types.EventsList', '10': 'eventsForVersion'},
  ],
};

