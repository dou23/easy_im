import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import '../config/api_list.dart';
import 'api.dart';

final Http http = Http();

class Http extends BaseHttp {
  @override
  void init() {
    options.baseUrl = GlobalApi.BaseUrl();
    interceptors
      ..add(ApiInterceptor())
      // cookie持久化 异步
      ..add(CookieManager(PersistCookieJar()));
  }
}

/// API
class ApiInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('---api-request--->url--> ${options.baseUrl}${options.path} queryParameters: ${options.queryParameters} headers: ${options.headers}');
    debugPrint('---api-request--->data--->${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('---api-response--->resp----->${response.data}');
    super.onResponse(response, handler);
    // ResponseData respData = ResponseData.fromJson(response.data);
    // if (respData.success) {
    //   return handler.next(response);
    // } else {
    //   if (respData.code == -1001) {
    //     // 如果cookie过期,需要清除本地存储的登录信息
    //     // StorageManager.localStorage.deleteItem(UserModel.keyUser);
    //     throw const UnAuthorizedException(); // 需要登录
    //   } else {
    //     throw NotSuccessException.fromRespData(respData);
    //   }
    // }
  }
}

class ResponseData extends BaseResponseData {
  bool get success => 200 == code;

  ResponseData.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    data = json['data'];
  }
}
