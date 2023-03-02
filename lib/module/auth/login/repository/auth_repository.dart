import 'dart:convert';

import 'package:easy_im/config/api_list.dart';
import 'package:easy_im/data/model/base_model.dart';
import 'package:easy_im/data/repository/base_repository.dart';
import 'package:easy_im/module/auth/login/model/user_entity.dart';
import 'package:easy_im/net/global_api.dart';


///注册相关api
class AuthRepository extends BaseRepository {

  ///用户注册
  Future<BaseResponse<UserEntity>> userRegister(
      String nickname, String account, String password) async {
    var response = await http.post(GlobalApi.userRegister(), data: jsonEncode({
      "account": account,
      "nickname": nickname,
      "password": password,
    }));
    return BaseResponse<UserEntity>.fromJson(response.data);
  }

  ///用户注册
  Future<BaseResponse<UserEntity>> userLogin(
      String account, String password) async {
    var response = await http.post(GlobalApi.userLogin(), data: jsonEncode({
      "account": account,
      "password": password,
    }));
    return BaseResponse<UserEntity>.fromJson(response.data);
  }

}
