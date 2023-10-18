// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_reports.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllReports _$AllReportsFromJson(Map<String, dynamic> json) => AllReports(
      success: json['success'] as String?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AllReportsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllReportsToJson(AllReports instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };
