import 'dart:convert';
import 'dart:io';

import 'package:easy_im/chatlib/pb/msg.pb.dart';

final ChatSocketClient = _ChatSocketClient();

class _ChatSocketClient {
  bool isConnect = false;

  void connect() {
    print('开始链接socket');
    Socket.connect("127.0.0.1",8888).then((socket) {
      socket.listen((event) {

        print('socket长链接连接成功: ${utf8.decode(event)}');
        var msg = Msg.create();
        msg.fromUserId = "1630870881943162880";
        msg.toUserId = "1630870881943162880";
        msg.chatType = Msg_ChatType.SINGLE;
        msg.msgType = Msg_MsgType.TEXT;
        msg.content = "Hello world";
        msg.seq = 0;
        msg.status = Msg_MsgStatus.SENT;
        msg.accessToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NvdW50IjoiMTMxMjMxMTIxNDEiLCJleHAiOjE2Nzc3NzYyNTQsImdyYW50X3R5cGUiOiJhY2Nlc3NfdG9rZW4iLCJpZCI6MTYzMDg3MDg4MTk0MzE2Mjg4MH0.1Nk8pVjTk0nPMP3R6jMdaN0pMOUQ5PvrVZ1iihUiriQ";
        socket.add(msg.writeToBuffer());
      });
    });
  }
}
