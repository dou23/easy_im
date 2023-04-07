///
//  Generated code. Do not modify.
//  source: msg.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgDescriptor instead')
const Msg$json = const {
  '1': 'Msg',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'seq', '3': 2, '4': 1, '5': 13, '10': 'seq'},
    const {'1': 'from_user_id', '3': 3, '4': 1, '5': 9, '10': 'fromUserId'},
    const {'1': 'to_user_id', '3': 4, '4': 1, '5': 9, '10': 'toUserId'},
    const {'1': 'chat_type', '3': 5, '4': 1, '5': 14, '6': '.model.Msg.ChatType', '10': 'chatType'},
    const {'1': 'msg_type', '3': 6, '4': 1, '5': 14, '6': '.model.Msg.MsgType', '10': 'msgType'},
    const {'1': 'status', '3': 7, '4': 1, '5': 14, '6': '.model.Msg.MsgStatus', '10': 'status'},
    const {'1': 'content', '3': 8, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'access_token', '3': 9, '4': 1, '5': 9, '10': 'accessToken'},
  ],
  '4': const [Msg_ChatType$json, Msg_MsgType$json, Msg_MsgStatus$json],
};

@$core.Deprecated('Use msgDescriptor instead')
const Msg_ChatType$json = const {
  '1': 'ChatType',
  '2': const [
    const {'1': 'SINGLE', '2': 0},
    const {'1': 'GROUP', '2': 1},
  ],
};

@$core.Deprecated('Use msgDescriptor instead')
const Msg_MsgType$json = const {
  '1': 'MsgType',
  '2': const [
    const {'1': 'TEXT', '2': 0},
    const {'1': 'IMAGE', '2': 1},
    const {'1': 'VOICE', '2': 2},
    const {'1': 'VIDEO', '2': 3},
    const {'1': 'EVENT', '2': 4},
    const {'1': 'NOTIFY', '2': 5},
  ],
};

@$core.Deprecated('Use msgDescriptor instead')
const Msg_MsgStatus$json = const {
  '1': 'MsgStatus',
  '2': const [
    const {'1': 'FAIL', '2': 0},
    const {'1': 'SENT', '2': 1},
    const {'1': 'ARRIVED', '2': 2},
    const {'1': 'READ', '2': 3},
  ],
};

/// Descriptor for `Msg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDescriptor = $convert.base64Decode('CgNNc2cSDgoCaWQYASABKAlSAmlkEhAKA3NlcRgCIAEoDVIDc2VxEiAKDGZyb21fdXNlcl9pZBgDIAEoCVIKZnJvbVVzZXJJZBIcCgp0b191c2VyX2lkGAQgASgJUgh0b1VzZXJJZBIwCgljaGF0X3R5cGUYBSABKA4yEy5tb2RlbC5Nc2cuQ2hhdFR5cGVSCGNoYXRUeXBlEi0KCG1zZ190eXBlGAYgASgOMhIubW9kZWwuTXNnLk1zZ1R5cGVSB21zZ1R5cGUSLAoGc3RhdHVzGAcgASgOMhQubW9kZWwuTXNnLk1zZ1N0YXR1c1IGc3RhdHVzEhgKB2NvbnRlbnQYCCABKAlSB2NvbnRlbnQSIQoMYWNjZXNzX3Rva2VuGAkgASgJUgthY2Nlc3NUb2tlbiIhCghDaGF0VHlwZRIKCgZTSU5HTEUQABIJCgVHUk9VUBABIksKB01zZ1R5cGUSCAoEVEVYVBAAEgkKBUlNQUdFEAESCQoFVk9JQ0UQAhIJCgVWSURFTxADEgkKBUVWRU5UEAQSCgoGTk9USUZZEAUiNgoJTXNnU3RhdHVzEggKBEZBSUwQABIICgRTRU5UEAESCwoHQVJSSVZFRBACEggKBFJFQUQQAw==');
