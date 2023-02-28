import 'package:easy_im/generated/json/base/json_convert_content.dart';
import 'package:easy_im/module/auth/login/model/user_register_entity.dart';

UserRegisterEntity $UserRegisterEntityFromJson(Map<String, dynamic> json) {
	final UserRegisterEntity userRegisterEntity = UserRegisterEntity();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		userRegisterEntity.id = id;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		userRegisterEntity.nickname = nickname;
	}
	final String? avatar = jsonConvert.convert<String>(json['avatar']);
	if (avatar != null) {
		userRegisterEntity.avatar = avatar;
	}
	final String? accessToken = jsonConvert.convert<String>(json['access_token']);
	if (accessToken != null) {
		userRegisterEntity.accessToken = accessToken;
	}
	final String? refreshToken = jsonConvert.convert<String>(json['refresh_token']);
	if (refreshToken != null) {
		userRegisterEntity.refreshToken = refreshToken;
	}
	final int? expiresIn = jsonConvert.convert<int>(json['expires_in']);
	if (expiresIn != null) {
		userRegisterEntity.expiresIn = expiresIn;
	}
	return userRegisterEntity;
}

Map<String, dynamic> $UserRegisterEntityToJson(UserRegisterEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['nickname'] = entity.nickname;
	data['avatar'] = entity.avatar;
	data['access_token'] = entity.accessToken;
	data['refresh_token'] = entity.refreshToken;
	data['expires_in'] = entity.expiresIn;
	return data;
}