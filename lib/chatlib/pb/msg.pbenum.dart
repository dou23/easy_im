///
//  Generated code. Do not modify.
//  source: msg.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Msg_ChatType extends $pb.ProtobufEnum {
  static const Msg_ChatType SINGLE = Msg_ChatType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SINGLE');
  static const Msg_ChatType GROUP = Msg_ChatType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GROUP');

  static const $core.List<Msg_ChatType> values = <Msg_ChatType> [
    SINGLE,
    GROUP,
  ];

  static final $core.Map<$core.int, Msg_ChatType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Msg_ChatType? valueOf($core.int value) => _byValue[value];

  const Msg_ChatType._($core.int v, $core.String n) : super(v, n);
}

class Msg_MsgType extends $pb.ProtobufEnum {
  static const Msg_MsgType TEXT = Msg_MsgType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEXT');
  static const Msg_MsgType IMAGE = Msg_MsgType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IMAGE');
  static const Msg_MsgType VOICE = Msg_MsgType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VOICE');
  static const Msg_MsgType VIDEO = Msg_MsgType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIDEO');
  static const Msg_MsgType EVENT = Msg_MsgType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EVENT');
  static const Msg_MsgType NOTIFY = Msg_MsgType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOTIFY');

  static const $core.List<Msg_MsgType> values = <Msg_MsgType> [
    TEXT,
    IMAGE,
    VOICE,
    VIDEO,
    EVENT,
    NOTIFY,
  ];

  static final $core.Map<$core.int, Msg_MsgType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Msg_MsgType? valueOf($core.int value) => _byValue[value];

  const Msg_MsgType._($core.int v, $core.String n) : super(v, n);
}

class Msg_MsgStatus extends $pb.ProtobufEnum {
  static const Msg_MsgStatus FAIL = Msg_MsgStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAIL');
  static const Msg_MsgStatus SENT = Msg_MsgStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SENT');
  static const Msg_MsgStatus ARRIVED = Msg_MsgStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARRIVED');
  static const Msg_MsgStatus READ = Msg_MsgStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'READ');

  static const $core.List<Msg_MsgStatus> values = <Msg_MsgStatus> [
    FAIL,
    SENT,
    ARRIVED,
    READ,
  ];

  static final $core.Map<$core.int, Msg_MsgStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Msg_MsgStatus? valueOf($core.int value) => _byValue[value];

  const Msg_MsgStatus._($core.int v, $core.String n) : super(v, n);
}

