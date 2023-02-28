

import 'package:riverpod/riverpod.dart';

import '../../../../data/model/base_model.dart';
import '../model/user_entity.dart';
import '../repository/auth_repository.dart';

///用户注册参数
class UserRegisterParams {

  ///昵称
  String nickname;

  ///用户名
  String account;

  ///注册
  String password;

  UserRegisterParams(this.nickname, this.account, this.password);
}

///用户注册
final userRegisterProvider = FutureProvider.family<BaseResponse<UserEntity>,UserRegisterParams>((ref,params) async {
  var userRegister = await AuthRepository.userRegister(params.nickname, params.account, params.password);
  return userRegister;
});