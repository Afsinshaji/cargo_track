// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_cargo_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCargoName _$AllCargoNameFromJson(Map<String, dynamic> json) => AllCargoName(
      success: json['success'] as String?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AllCargoData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllCargoNameToJson(AllCargoName instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };
