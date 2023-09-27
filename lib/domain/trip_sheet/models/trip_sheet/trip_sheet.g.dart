// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_sheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripSheet _$TripSheetFromJson(Map<String, dynamic> json) => TripSheet(
      id: json['id'] as String?,
      tripSheetId: json['trip_sheet_id'] as String?,
      goodsId: json['goods_id'] as String?,
      invoiceNumber: json['invoice_number'] as String?,
      cargoId: json['cargo_id'] as String?,
      cargoName: json['cargo_name'] as String?,
      place: json['place'] as String?,
      mobilenumber: json['mobilenumber'] as String?,
      quantity: json['quantity'] as String?,
      weight: json['weight'] as String?,
      status: json['status'] as String?,
      message: json['message'],
      image: json['image'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$TripSheetToJson(TripSheet instance) => <String, dynamic>{
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
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
