import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_im/router/easy_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var splashBackgroundImageUrl = 'http://bing.getlove.cn/bingImage';
  var splashLogoImageUrl =
      // 'https://iconfont.alicdn.com/p/illus/preview_image/PyS0EYNRK8qx/0868675f-b1af-455e-af93-97f0e11473de.png';
      'https://tse3-mm.cn.bing.net/th/id/OIP-C.X_glztWjAMcBwKpp72sKpgHaHa?w=183&h=184&c=7&r=0&o=5&pid=1.7';
  var splashTime = const Duration(milliseconds: 1500);

  @override
  void initState() {
    super.initState();
    Timer(splashTime, () {
      context.go(RouterPath.LOGIN);
      context.canPop();
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
                      children: [
                        CachedNetworkImage(
                          imageUrl: splashLogoImageUrl,
                          height: 60,
                          width: 60,
                        ),
                        const Padding(padding: EdgeInsets.all(8)),
                        const Text("Welcome To Easy IM"),
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
