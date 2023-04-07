import 'dart:convert';

import 'package:easy_im/module/auth/model/refresh_token_entity.dart';

import '../../../config/api_list.dart';
import '../../../data/model/base_model.dart';
import '../../../data/repository/base_repository.dart';
import '../../../net/global_api.dart';

///注册相关api
class LoginRepository extends BaseRepository {
  ///刷新access_token key
  static String ACCESS_TOKEN = "access_token";

  ///刷新refresh_token key
  static String REFRESH_TOKEN = "refresh_token";

  ///用户注册
  Future<BaseResponse<RefreshTokenEntity>> refreshToken(
      String refreshToken, String grantType) async {
    var response = await http.post(GlobalApi.userLogin(),
        data: jsonEncode({
          "refresh_token": refreshToken,
          "grant_type": grantType,
          "reset_secret": false,
        }));
    return BaseResponse<RefreshTokenEntity>.fromJson(response.data);
  }
}
