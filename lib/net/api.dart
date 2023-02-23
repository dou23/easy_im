import 'dart:convert';

import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

import '../utils/platform/platform_utils.dart';
export 'package:dio/dio.dart';

// 必须是顶层函数
_parseAndDecode(String response) {
  return jsonDecode(response);
}

parseJson(String text) {
  return compute(_parseAndDecode, text);
}

abstract class BaseHttp extends DioForNative {
  BaseHttp() {
    /// 初始化 加入app通用处理
    (transformer as BackgroundTransformer).jsonDecodeCallback = parseJson;
    interceptors.add(HeaderInterceptor());
    init();
  }

  void init();
}

/// 添加常用Header
class HeaderInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.connectTimeout = const Duration(seconds: 45);
    options.receiveTimeout = const Duration(seconds: 45);

    var appVersion = await PlatformUtils.getAppVersion();
    var version = {}..addAll({
        'appVerison': appVersion,
      });
    options.headers['version'] = version;
    options.headers['platform'] = Platform.operatingSystem;
    super.onRequest(options, handler);
  }
}

/// 子类需要重写
abstract class BaseResponseData {
  int? code = 0;
  String? msg;
  dynamic data;

  bool get success;

  BaseResponseData({this.code, this.msg, this.data});

  @override
  String toString() {
    return 'BaseRespData{code: $code, message: $msg, data: $data}';
  }
}

/// 接口的code没有返回为true的异常
class NotSuccessException implements Exception {
  late String message;

  NotSuccessException.fromRespData(BaseResponseData respData) {
    message = respData.msg!;
  }

  @override
  String toString() {
    return 'NotExpectedException{respData: $message}';
  }
}

/// 用于未登录等权限不够,需要跳转授权页面
class UnAuthorizedException implements Exception {
  const UnAuthorizedException();

  @override
  String toString() => 'UnAuthorizedException';
}
