import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'mobile')
  String? mobile;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'api_token')
  String? apiToken;
  @JsonKey(name: 'role')
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
