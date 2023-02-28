import '../../../generated/json/base/json_convert_content.dart';

class BaseResponse<T> {
  bool get success => 200 == code;

  int? code;
  String? msg;
  T? data;

  BaseResponse({this.code, this.msg, this.data});

  BaseResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null && json['data'] != 'null') {
      data = JsonConvert.fromJsonAsT<T>(json['data']);
    }
    code = json['code'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data;
    }
    data['code'] = this.code;
    data['msg'] = this.msg;
    return data;
  }
}
