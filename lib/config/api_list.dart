import 'dart:core';

///http请求api常量池
class GlobalApi {
  static String BaseUrl() {
    return "http://127.0.0.1:8080/api/";
  }

  ///用户登录
  static String userRegister() {
    return "user/register";
  }

  ///用户登录
  static String userLogin(){
    return "user/login";
  }

  ///退出登录
  static String userLogout(){
    return "user/logout";
  }

  ///用户权限token
  static String userAccessToken(){
    return "user/access_token";
  }

  ///用户刷新token
  static String userRefreshToken(){
    return "user/refresh_token";
  }

}
