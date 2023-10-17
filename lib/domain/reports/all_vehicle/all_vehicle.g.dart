// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllVehicle _$AllVehicleFromJson(Map<String, dynamic> json) => AllVehicle(
      success: json['success'] as String?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AllVehicleData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllVehicleToJson(AllVehicle instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };
