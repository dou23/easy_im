import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../module/splash/ui/splash_page.dart';

final GoRouter easyGoRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext ctx,GoRouterState state) {
        return const SplashPage();
      },
    ),
  ],
);