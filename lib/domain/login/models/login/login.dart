import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'login.g.dart';

@JsonSerializable()
class Login {
  String? success;
  String? status;
  Data? data;

  Login({this.success, this.status, this.data});

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}
