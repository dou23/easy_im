import 'package:easy_im/module/auth/login/ui/login_page.dart';
import 'package:easy_im/module/auth/login/ui/register_page.dart';
import 'package:easy_im/module/contacts/ui/contacts_page.dart';
import 'package:easy_im/module/main/ui/main_page.dart';
import 'package:easy_im/module/mine/mine_page.dart';
import 'package:easy_im/module/msglist/msg_list_page.dart';
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
    GoRoute(
      path: RouterPath.MAIN,
      builder: (BuildContext ctx,GoRouterState state) {
        return const MainPage();
      },
    ),
    GoRoute(
      path: RouterPath.MSGLIST,
      builder: (BuildContext ctx,GoRouterState state) {
        return const MsgListPage();
      },
    ),
    GoRoute(
      path: RouterPath.CONTACTS,
      builder: (BuildContext ctx,GoRouterState state) {
        return const ContactsPage();
      },
    ),
    GoRoute(
      path: RouterPath.MINE,
      builder: (BuildContext ctx,GoRouterState state) {
        return const MinePage();
      },
    ),
  ],
);