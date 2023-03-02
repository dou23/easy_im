import 'package:easy_im/chatlib/socket/chat_socket_client.dart';
import 'package:easy_im/module/contacts/contacts_page.dart';
import 'package:easy_im/module/mine/mine_page.dart';
import 'package:easy_im/module/msglist/msg_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/auth_provider/user_provider.dart';


///当前位置Provider
final _currentPositionProvider = StateProvider((ref) => 0);

class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {

  ///页面控制器
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: ref.read(_currentPositionProvider),
      keepPage: true,
    );
    ChatSocketClient.connect();
  }

  ///主界面
  var pages = const <Widget>[
    MsgListPage(),
    ContactsPage(),
    MinePage(),
  ];

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        child: PageView(
          controller: pageController,
          onPageChanged:(int position){
            ref.read(_currentPositionProvider.notifier).state = position;
          },
          children: pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "联系人"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "我的"),
        ],
        currentIndex:ref.watch(_currentPositionProvider),
        onTap: (int position){
          pageController.jumpToPage(position);
        },
      ),
    );
  }
}
