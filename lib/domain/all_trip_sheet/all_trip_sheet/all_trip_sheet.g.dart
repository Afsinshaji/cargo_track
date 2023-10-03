// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_trip_sheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllTripSheet _$AllTripSheetFromJson(Map<String, dynamic> json) => AllTripSheet(
      success: json['success'] as String?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllTripSheetToJson(AllTripSheet instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };
