import 'package:riverpod/riverpod.dart';

import '../../../../data/model/base_model.dart';
import '../model/user_entity.dart';
import '../repository/auth_repository.dart';

///用户注册参数
class UserLoginParams {
  ///昵称
  String account;

  ///注册
  String password;

  UserLoginParams(this.account, this.password);
}

///用户注册
final userLoginProvider =
    FutureProvider.family<BaseResponse<UserEntity>, UserLoginParams>(
        (ref, params) async {
  var userRegister =
      await AuthRepository.userLogin(params.account, params.password);
  return userRegister;
});
