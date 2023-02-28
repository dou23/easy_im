

import 'package:riverpod/riverpod.dart';

import '../../../../data/model/base_model.dart';
import '../model/user_register_entity.dart';
import '../repository/auth_repository.dart';

///用户注册参数
class UserRegisterParams {

  ///昵称
  String account;

  ///用户名
  String id;

  ///注册
  String password;

  UserRegisterParams(this.account, this.id, this.password);
}

///用户注册
final userRegisterProvider = FutureProvider.family<BaseResponse<UserRegisterEntity>,UserRegisterParams>((ref,params) async {
  var userRegister = await AuthRepository.userRegister(params.account, params.id, params.password);
  return userRegister;
});