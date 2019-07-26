///
//  Generated code. Do not modify.
//  source: proto/events.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'access_path.pb.dart' as $5;
import 'proof.pb.dart' as $4;

class Event extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Event', package: const $pb.PackageName('types'))
    ..a<$5.AccessPath>(1, 'accessPath', $pb.PbFieldType.OM, $5.AccessPath.getDefault, $5.AccessPath.create)
    ..a<Int64>(2, 'sequenceNumber', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<$core.List<$core.int>>(3, 'eventData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event() => create();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Event clone() => Event()..mergeFromMessage(this);
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  static Event getDefault() => _defaultInstance ??= create()..freeze();
  static Event _defaultInstance;

  $5.AccessPath get accessPath => $_getN(0);
  set accessPath($5.AccessPath v) { setField(1, v); }
  $core.bool hasAccessPath() => $_has(0);
  void clearAccessPath() => clearField(1);

  Int64 get sequenceNumber => $_getI64(1);
  set sequenceNumber(Int64 v) { $_setInt64(1, v); }
  $core.bool hasSequenceNumber() => $_has(1);
  void clearSequenceNumber() => clearField(2);

  $core.List<$core.int> get eventData => $_getN(2);
  set eventData($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasEventData() => $_has(2);
  void clearEventData() => clearField(3);
}

class EventWithProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventWithProof', package: const $pb.PackageName('types'))
    ..a<Int64>(1, 'transactionVersion', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Int64>(2, 'eventIndex', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Event>(3, 'event', $pb.PbFieldType.OM, Event.getDefault, Event.create)
    ..a<$4.EventProof>(4, 'proof', $pb.PbFieldType.OM, $4.EventProof.getDefault, $4.EventProof.create)
    ..hasRequiredFields = false
  ;

  EventWithProof._() : super();
  factory EventWithProof() => create();
  factory EventWithProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventWithProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventWithProof clone() => EventWithProof()..mergeFromMessage(this);
  EventWithProof copyWith(void Function(EventWithProof) updates) => super.copyWith((message) => updates(message as EventWithProof));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventWithProof create() => EventWithProof._();
  EventWithProof createEmptyInstance() => create();
  static $pb.PbList<EventWithProof> createRepeated() => $pb.PbList<EventWithProof>();
  static EventWithProof getDefault() => _defaultInstance ??= create()..freeze();
  static EventWithProof _defaultInstance;

  Int64 get transactionVersion => $_getI64(0);
  set transactionVersion(Int64 v) { $_setInt64(0, v); }
  $core.bool hasTransactionVersion() => $_has(0);
  void clearTransactionVersion() => clearField(1);

  Int64 get eventIndex => $_getI64(1);
  set eventIndex(Int64 v) { $_setInt64(1, v); }
  $core.bool hasEventIndex() => $_has(1);
  void clearEventIndex() => clearField(2);

  Event get event => $_getN(2);
  set event(Event v) { setField(3, v); }
  $core.bool hasEvent() => $_has(2);
  void clearEvent() => clearField(3);

  $4.EventProof get proof => $_getN(3);
  set proof($4.EventProof v) { setField(4, v); }
  $core.bool hasProof() => $_has(3);
  void clearProof() => clearField(4);
}

class EventsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventsList', package: const $pb.PackageName('types'))
    ..pc<Event>(1, 'events', $pb.PbFieldType.PM,Event.create)
    ..hasRequiredFields = false
  ;

  EventsList._() : super();
  factory EventsList() => create();
  factory EventsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventsList clone() => EventsList()..mergeFromMessage(this);
  EventsList copyWith(void Function(EventsList) updates) => super.copyWith((message) => updates(message as EventsList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventsList create() => EventsList._();
  EventsList createEmptyInstance() => create();
  static $pb.PbList<EventsList> createRepeated() => $pb.PbList<EventsList>();
  static EventsList getDefault() => _defaultInstance ??= create()..freeze();
  static EventsList _defaultInstance;

  $core.List<Event> get events => $_getList(0);
}

class EventsForVersions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventsForVersions', package: const $pb.PackageName('types'))
    ..pc<EventsList>(1, 'eventsForVersion', $pb.PbFieldType.PM,EventsList.create)
    ..hasRequiredFields = false
  ;

  EventsForVersions._() : super();
  factory EventsForVersions() => create();
  factory EventsForVersions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventsForVersions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventsForVersions clone() => EventsForVersions()..mergeFromMessage(this);
  EventsForVersions copyWith(void Function(EventsForVersions) updates) => super.copyWith((message) => updates(message as EventsForVersions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventsForVersions create() => EventsForVersions._();
  EventsForVersions createEmptyInstance() => create();
  static $pb.PbList<EventsForVersions> createRepeated() => $pb.PbList<EventsForVersions>();
  static EventsForVersions getDefault() => _defaultInstance ??= create()..freeze();
  static EventsForVersions _defaultInstance;

  $core.List<EventsList> get eventsForVersion => $_getList(0);
}

