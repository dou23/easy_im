///
//  Generated code. Do not modify.
//  source: msg.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'msg.pbenum.dart';

export 'msg.pbenum.dart';

class Msg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Msg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seq', $pb.PbFieldType.OU3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromUserId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toUserId')
    ..e<Msg_ChatType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatType', $pb.PbFieldType.OE, defaultOrMaker: Msg_ChatType.SINGLE, valueOf: Msg_ChatType.valueOf, enumValues: Msg_ChatType.values)
    ..e<Msg_MsgType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgType', $pb.PbFieldType.OE, defaultOrMaker: Msg_MsgType.TEXT, valueOf: Msg_MsgType.valueOf, enumValues: Msg_MsgType.values)
    ..e<Msg_MsgStatus>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Msg_MsgStatus.FAIL, valueOf: Msg_MsgStatus.valueOf, enumValues: Msg_MsgStatus.values)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken')
    ..hasRequiredFields = false
  ;

  Msg._() : super();
  factory Msg({
    $core.String? id,
    $core.int? seq,
    $core.String? fromUserId,
    $core.String? toUserId,
    Msg_ChatType? chatType,
    Msg_MsgType? msgType,
    Msg_MsgStatus? status,
    $core.String? content,
    $core.String? accessToken,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (seq != null) {
      _result.seq = seq;
    }
    if (fromUserId != null) {
      _result.fromUserId = fromUserId;
    }
    if (toUserId != null) {
      _result.toUserId = toUserId;
    }
    if (chatType != null) {
      _result.chatType = chatType;
    }
    if (msgType != null) {
      _result.msgType = msgType;
    }
    if (status != null) {
      _result.status = status;
    }
    if (content != null) {
      _result.content = content;
    }
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory Msg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Msg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Msg clone() => Msg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Msg copyWith(void Function(Msg) updates) => super.copyWith((message) => updates(message as Msg)) as Msg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Msg create() => Msg._();
  Msg createEmptyInstance() => create();
  static $pb.PbList<Msg> createRepeated() => $pb.PbList<Msg>();
  @$core.pragma('dart2js:noInline')
  static Msg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Msg>(create);
  static Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get seq => $_getIZ(1);
  @$pb.TagNumber(2)
  set seq($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeq() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeq() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fromUserId => $_getSZ(2);
  @$pb.TagNumber(3)
  set fromUserId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFromUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get toUserId => $_getSZ(3);
  @$pb.TagNumber(4)
  set toUserId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearToUserId() => clearField(4);

  @$pb.TagNumber(5)
  Msg_ChatType get chatType => $_getN(4);
  @$pb.TagNumber(5)
  set chatType(Msg_ChatType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasChatType() => $_has(4);
  @$pb.TagNumber(5)
  void clearChatType() => clearField(5);

  @$pb.TagNumber(6)
  Msg_MsgType get msgType => $_getN(5);
  @$pb.TagNumber(6)
  set msgType(Msg_MsgType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMsgType() => $_has(5);
  @$pb.TagNumber(6)
  void clearMsgType() => clearField(6);

  @$pb.TagNumber(7)
  Msg_MsgStatus get status => $_getN(6);
  @$pb.TagNumber(7)
  set status(Msg_MsgStatus v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get content => $_getSZ(7);
  @$pb.TagNumber(8)
  set content($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasContent() => $_has(7);
  @$pb.TagNumber(8)
  void clearContent() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get accessToken => $_getSZ(8);
  @$pb.TagNumber(9)
  set accessToken($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAccessToken() => $_has(8);
  @$pb.TagNumber(9)
  void clearAccessToken() => clearField(9);
}

