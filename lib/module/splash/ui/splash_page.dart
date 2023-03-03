import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_im/config/constant_pool.dart';
import 'package:easy_im/config/storage_manager.dart';
import 'package:easy_im/module/auth/auth_provider/user_provider.dart';
import 'package:easy_im/router/easy_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:desktop_window/desktop_window.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  var splashBackgroundImageUrl = 'http://bing.getlove.cn/bingImage';
  var splashLogoImageUrl =
      // 'https://iconfont.alicdn.com/p/illus/preview_image/PyS0EYNRK8qx/0868675f-b1af-455e-af93-97f0e11473de.png';
      'https://tse3-mm.cn.bing.net/th/id/OIP-C.X_glztWjAMcBwKpp72sKpgHaHa?w=183&h=184&c=7&r=0&o=5&pid=1.7';
  var splashTime = const Duration(milliseconds: 1500);

  @override
  void initState() {
    DesktopWindow.setWindowSize(const Size(328, 600));
    super.initState();
    Timer(splashTime, () {});
    initData();
  }

  void initData() {
    initUserData((user) {
      if (user!=null) {
        ref.read(UserProvider.notifier).setUser(user);
      }
      print('用户信息: ${user}');
      if (user?.accessToken?.isNotEmpty ?? false) {
        context.go(RouterPath.MAIN);
      } else {
        context.go(RouterPath.LOGIN);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: splashBackgroundImageUrl,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              progressIndicatorBuilder: (ctx, url, progress) => Center(
                child: CircularProgressIndicator(
                  value: progress.progress,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.cloud),
                        Padding(padding: EdgeInsets.all(8)),
                        Text("Welcome To Easy IM"),
                      ],
                    ),
                  ),
                ),
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color?>(
                    Colors.redAccent,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 54),
                  child: Text("Loading"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
