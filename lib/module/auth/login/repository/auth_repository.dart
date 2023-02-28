import 'package:easy_im/config/api_list.dart';
import 'package:easy_im/data/model/base_model.dart';
import 'package:easy_im/data/repository/base_repository.dart';
import 'package:easy_im/module/auth/login/model/user_register_entity.dart';
import 'package:easy_im/net/global_api.dart';

final _AuthRepository AuthRepository = _AuthRepository();

///注册相关api
class _AuthRepository extends BaseRepository {

  ///用户注册
  Future<BaseResponse<UserRegisterEntity>> userRegister(
      String account, String id, String password) async {
    var response = await http.post(GlobalApi.userRegister(), data: {
      "account": account,
      "id": id,
      "password": password,
    });
    return BaseResponse<UserRegisterEntity>.fromJson(response.data);
  }
}
