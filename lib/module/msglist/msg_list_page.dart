
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MsgListPage extends ConsumerStatefulWidget {
  const MsgListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MsgListPage> createState() => _MsgListPageState();
}

class _MsgListPageState extends ConsumerState<MsgListPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Text("消息"),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
