// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cargo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cargo _$CargoFromJson(Map<String, dynamic> json) => Cargo(
      invoiceno: json['invoiceno'] as String?,
      goodsId: json['goods_id'] as String?,
      tripSheetId: json['trip_sheet_id'] as String?,
      district: json['district'] as String?,
      company: json['company'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as int?,
      weight: json['weight'] as String?,
      pcs: json['pcs'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$CargoToJson(Cargo instance) => <String, dynamic>{
      'invoiceno': instance.invoiceno,
      'goods_id': instance.goodsId,
      'trip_sheet_id': instance.tripSheetId,
      'district': instance.district,
      'company': instance.company,
      'address': instance.address,
      'phone': instance.phone,
      'weight': instance.weight,
      'pcs': instance.pcs,
      'status': instance.status,
    };
