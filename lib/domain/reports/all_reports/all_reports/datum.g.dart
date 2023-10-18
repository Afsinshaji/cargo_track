// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllReportsData _$AllReportsDataFromJson(Map<String, dynamic> json) =>
    AllReportsData(
      id: json['id'] as int?,
      tripSheetId: json['trip_sheet_id'] as int?,
      invoiceNumber: json['invoice_number'] as String?,
      cargoId: json['cargo_id'] as String?,
      cargoName: json['cargo_name'] as String?,
      place: json['place'] as String?,
      mobilenumber: json['mobilenumber'] as String?,
      quantity: json['quantity'] as int?,
      weight: json['weight'] as String?,
      status: json['status'] as int?,
      image: json['image'],
      goodsId: json['goods_id'],
      vehicleNumber: json['vehicle_number'] as String?,
      driverName: json['driver_name'] as String?,
    );

Map<String, dynamic> _$AllReportsDataToJson(AllReportsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trip_sheet_id': instance.tripSheetId,
      'invoice_number': instance.invoiceNumber,
      'cargo_id': instance.cargoId,
      'cargo_name': instance.cargoName,
      'place': instance.place,
      'mobilenumber': instance.mobilenumber,
      'quantity': instance.quantity,
      'weight': instance.weight,
      'status': instance.status,
      'image': instance.image,
      'goods_id': instance.goodsId,
      'vehicle_number': instance.vehicleNumber,
      'driver_name': instance.driverName,
    };
