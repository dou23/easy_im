import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import '../pb/msg.pb.dart';

///连接回调
typedef OnConnect = void Function(bool connect);

///抽象长链接
abstract class EasySocket {
  ///连接
  void connect(OnConnect onConnect);

  ///发送消息
  void sendMsg();
}

final EasySocket ChatSocketClient = _ChatSocketClient();

class _ChatSocketClient implements EasySocket {
  bool isConnect = false;

  Socket? socket;

  @override
  void connect(OnConnect onConnect) {
    print('开始链接socket');
    Socket.connect("127.0.0.1", 8888).then((socket) {
      this.socket = socket;
      print('连接成功');
      socket.isBroadcast;
      onConnect.call(true);
      receiverMgs();
    });
  }

  void reconnect(){

  }

  ///发送消息
  @override
  void sendMsg() {
    var msg = Msg.create();
    msg.fromUserId = "1630870881943162880";
    msg.toUserId = "1630870881943162880";
    msg.chatType = Msg_ChatType.SINGLE;
    msg.msgType = Msg_MsgType.TEXT;
    msg.content = "Hello world";
    msg.seq = 0;
    msg.status = Msg_MsgStatus.SENT;
    msg.accessToken =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NvdW50IjoiMTMxMjMxMTIxNDEiLCJleHAiOjE2Nzc3NzYyNTQsImdyYW50X3R5cGUiOiJhY2Nlc3NfdG9rZW4iLCJpZCI6MTYzMDg3MDg4MTk0MzE2Mjg4MH0.1Nk8pVjTk0nPMP3R6jMdaN0pMOUQ5PvrVZ1iihUiriQ";
    socket?.add(msg.writeToBuffer());
  }

  void receiverMgs() {
    socket?.listen(
      (event) {
        print('socket长链接连接成功: ${utf8.decode(event)}');
        var msg = Msg.create();
        msg.fromUserId = "1630870881943162880";
        msg.toUserId = "1630870881943162880";
        msg.chatType = Msg_ChatType.SINGLE;
        msg.msgType = Msg_MsgType.TEXT;
        msg.content = "Hello world";
        msg.seq = 0;
        msg.status = Msg_MsgStatus.SENT;
        msg.accessToken =
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NvdW50IjoiMTMxMjMxMTIxNDEiLCJleHAiOjE2Nzc3NzYyNTQsImdyYW50X3R5cGUiOiJhY2Nlc3NfdG9rZW4iLCJpZCI6MTYzMDg3MDg4MTk0MzE2Mjg4MH0.1Nk8pVjTk0nPMP3R6jMdaN0pMOUQ5PvrVZ1iihUiriQ";
        socket?.add(msg.writeToBuffer());
      },
      onDone: () {//连接断开

      },
      onError: () {//出现错误

      },
    );
  }
}
