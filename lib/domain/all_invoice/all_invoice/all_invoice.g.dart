// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllInvoice _$AllInvoiceFromJson(Map<String, dynamic> json) => AllInvoice(
      success: json['success'] as String?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InvoiceDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllInvoiceToJson(AllInvoice instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };
