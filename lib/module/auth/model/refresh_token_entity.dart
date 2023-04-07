import 'package:easy_im/generated/json/base/json_field.dart';
import 'package:easy_im/generated/json/refresh_token_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class RefreshTokenEntity {
	@JSONField(name: "grant_type")
	String? grantType;
	@JSONField(name: "expires_in")
	int? expiresIn;
	String? token;

	RefreshTokenEntity();

	factory RefreshTokenEntity.fromJson(Map<String, dynamic> json) => $RefreshTokenEntityFromJson(json);

	Map<String, dynamic> toJson() => $RefreshTokenEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}