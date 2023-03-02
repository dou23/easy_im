import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../config/constant_pool.dart';
import '../../../config/storage_manager.dart';
import '../login/model/user_entity.dart';

void initUserData(ValueChanged<UserEntity> userCallBack) {
  storage.read(key: StringPool.User).then((userJson) {
    var userEntity = UserEntity.fromJson(jsonDecode(userJson.toString() ?? ""));
    userCallBack.call(userEntity);
  });
}

final UserProvider =
    StateNotifierProvider<UserStateNotifier, UserEntity>((ref) {
  return UserStateNotifier(UserEntity());
});

class UserStateNotifier extends StateNotifier<UserEntity> {
  UserStateNotifier(super._state);

  UserStateNotifier setUser(UserEntity userEntity) {
    state = userEntity;
    storage.write(key: StringPool.User, value: jsonEncode(userEntity));
    return this;
  }
}
