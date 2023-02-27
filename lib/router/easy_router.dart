import 'package:easy_im/module/auth/login/ui/login_page.dart';
import 'package:easy_im/module/auth/login/ui/register_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../module/splash/ui/splash_page.dart';

part 'easy_routes.dart';

final GoRouter easyGoRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouterPath.ROOT,
      builder: (BuildContext ctx,GoRouterState state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: RouterPath.LOGIN,
      builder: (BuildContext ctx,GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: RouterPath.REGISTER,
      builder: (BuildContext ctx,GoRouterState state) {
        return const RegisterPage();
      },
    ),
  ],
);