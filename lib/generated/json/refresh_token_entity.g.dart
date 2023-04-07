import 'package:easy_im/generated/json/base/json_convert_content.dart';
import 'package:easy_im/module/auth/model/refresh_token_entity.dart';

RefreshTokenEntity $RefreshTokenEntityFromJson(Map<String, dynamic> json) {
	final RefreshTokenEntity refreshTokenEntity = RefreshTokenEntity();
	final String? grantType = jsonConvert.convert<String>(json['grant_type']);
	if (grantType != null) {
		refreshTokenEntity.grantType = grantType;
	}
	final int? expiresIn = jsonConvert.convert<int>(json['expires_in']);
	if (expiresIn != null) {
		refreshTokenEntity.expiresIn = expiresIn;
	}
	final String? token = jsonConvert.convert<String>(json['token']);
	if (token != null) {
		refreshTokenEntity.token = token;
	}
	return refreshTokenEntity;
}

Map<String, dynamic> $RefreshTokenEntityToJson(RefreshTokenEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['grant_type'] = entity.grantType;
	data['expires_in'] = entity.expiresIn;
	data['token'] = entity.token;
	return data;
}