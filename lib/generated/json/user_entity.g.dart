import 'package:easy_im/generated/json/base/json_convert_content.dart';
import 'package:easy_im/module/auth/login/model/user_entity.dart';

UserEntity $UserEntityFromJson(Map<String, dynamic> json) {
	final UserEntity userEntity = UserEntity();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		userEntity.id = id;
	}
	final String? nickname = jsonConvert.convert<String>(json['nickname']);
	if (nickname != null) {
		userEntity.nickname = nickname;
	}
	final String? avatar = jsonConvert.convert<String>(json['avatar']);
	if (avatar != null) {
		userEntity.avatar = avatar;
	}
	final String? accessToken = jsonConvert.convert<String>(json['access_token']);
	if (accessToken != null) {
		userEntity.accessToken = accessToken;
	}
	final String? refreshToken = jsonConvert.convert<String>(json['refresh_token']);
	if (refreshToken != null) {
		userEntity.refreshToken = refreshToken;
	}
	final int? expiresIn = jsonConvert.convert<int>(json['expires_in']);
	if (expiresIn != null) {
		userEntity.expiresIn = expiresIn;
	}
	return userEntity;
}

Map<String, dynamic> $UserEntityToJson(UserEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['nickname'] = entity.nickname;
	data['avatar'] = entity.avatar;
	data['access_token'] = entity.accessToken;
	data['refresh_token'] = entity.refreshToken;
	data['expires_in'] = entity.expiresIn;
	return data;
}