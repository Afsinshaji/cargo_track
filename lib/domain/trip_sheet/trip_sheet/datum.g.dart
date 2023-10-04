// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripSheetDatum _$TripSheetDatumFromJson(Map<String, dynamic> json) =>
    TripSheetDatum(
      id: json['id'] as int?,
      tripSheetId: json['trip_sheet_id'] as int?,
      goodsId: json['goods_id'] as int?,
      invoiceNumber: json['invoice_number'] as String?,
      cargoId: json['cargo_id'] as String?,
      cargoName: json['cargo_name'] as String?,
      place: json['place'] as String?,
      mobilenumber: json['mobilenumber'] as String?,
      quantity: json['quantity'] as int?,
      weight: json['weight'] as String?,
      status: json['status'] as int?,
      message: json['message'],
      image: json['image'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$TripSheetDatumToJson(TripSheetDatum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trip_sheet_id': instance.tripSheetId,
      'goods_id': instance.goodsId,
      'invoice_number': instance.invoiceNumber,
      'cargo_id': instance.cargoId,
      'cargo_name': instance.cargoName,
      'place': instance.place,
      'mobilenumber': instance.mobilenumber,
      'quantity': instance.quantity,
      'weight': instance.weight,
      'status': instance.status,
      'message': instance.message,
      'image': instance.image,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
