import 'package:easy_im/generated/json/base/json_field.dart';
import 'package:easy_im/generated/json/user_register_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UserRegisterEntity {

	String? id;
	String? nickname;
	String? avatar;
	@JSONField(name: "access_token")
	String? accessToken;
	@JSONField(name: "refresh_token")
	String? refreshToken;
	@JSONField(name: "expires_in")
	int? expiresIn;
  
  UserRegisterEntity();

  factory UserRegisterEntity.fromJson(Map<String, dynamic> json) => $UserRegisterEntityFromJson(json);

  Map<String, dynamic> toJson() => $UserRegisterEntityToJson(this);

  UserRegisterEntity copyWith({String? id, String? nickname, String? avatar, String? accessToken, String? refreshToken, int? expiresIn}) {
      return UserRegisterEntity()..id= id ?? this.id
			..nickname= nickname ?? this.nickname
			..avatar= avatar ?? this.avatar
			..accessToken= accessToken ?? this.accessToken
			..refreshToken= refreshToken ?? this.refreshToken
			..expiresIn= expiresIn ?? this.expiresIn;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}