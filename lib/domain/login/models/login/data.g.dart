// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      mobile: json['mobile'] as String?,
      status: json['status'] as String?,
      apiToken: json['api_token'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'mobile': instance.mobile,
      'status': instance.status,
      'api_token': instance.apiToken,
      'role': instance.role,
    };
