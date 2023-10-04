// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_sheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripSheet _$TripSheetFromJson(Map<String, dynamic> json) => TripSheet(
      success: json['success'] as String?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TripSheetDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TripSheetToJson(TripSheet instance) => <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };
