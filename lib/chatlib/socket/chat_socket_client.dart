import 'package:easy_im/config/api_list.dart';
import 'package:socket_io_client/socket_io_client.dart';

final ChatSocketClient = _ChatSocketClient();

class _ChatSocketClient {
  void connect() {
    print('开始链接socket');
    var socket = io(GlobalApi.host);
    socket.onConnect((data) {
      print('socket connect: ${data}');
    });
    socket.on('event', (data) {
      print('socket event: ${data}');
    });
    socket.onAny((event, data) {
      print('socket event: ${event}, data:${data}');
    });
    socket.onDisconnect((data) {
      print('socket disconnect:${data}');
    });
    socket.onConnectError((data) {
      print('socket onConnectError:${data}');
    });
    socket.onError((data) {
      print('socket onError:${data}');
    });
    socket.onError((data) {
      print('socket onError:${data}');
    });
  }
}
