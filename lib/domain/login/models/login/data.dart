import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String? id;
  String? name;
  String? username;
  String? mobile;
  String? status;
  @JsonKey(name: 'api_token')
  String? apiToken;
  String? role;

  Data({
    this.id,
    this.name,
    this.username,
    this.mobile,
    this.status,
    this.apiToken,
    this.role,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
