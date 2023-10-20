// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingStatus _$TrackingStatusFromJson(Map<String, dynamic> json) =>
    TrackingStatus(
      success: json['success'] as String?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StatusData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrackingStatusToJson(TrackingStatus instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };
