import 'dart:core';

import 'package:easy_im/config/env.dart';

///http请求api常量池
class GlobalApi {
  static String host = Env.host;

  static String BaseUrl() {
    return '${host}/api/';
  }

  ///用户登录
  static String userRegister() {
    return "user/register";
  }

  ///用户登录
  static String userLogin() {
    return "user/login";
  }

  ///退出登录
  static String userLogout() {
    return "user/logout";
  }

  ///用户权限token
  static String userAccessToken() {
    return "user/access_token";
  }

  ///用户刷新token
  static String userRefreshToken() {
    return "user/refresh_token";
  }

  ///好友列表
  static String userFriends(){
    return "user/friends";
  }

  ///添加好友
  static String userFriendAdd(){
    return "user/friend/add";
  }

  ///收受好友请求
  static String userFriendAccept(){
    return "user/friend/accept";
  }

  ///删除好友
  static String userFriendRemove(){
    return "user/friend/remove";
  }

  ///搜索用户
  static String userSearch(){
    return "user/search";
  }
}
