import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MinePage extends ConsumerStatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  ConsumerState<MinePage> createState() => _MinePageState();
}

class _MinePageState extends ConsumerState<MinePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("我的"),
    );
  }

  @override
  final bool wantKeepAlive = true;
}
