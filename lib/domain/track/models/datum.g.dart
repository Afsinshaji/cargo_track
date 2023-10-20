// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusData _$StatusDataFromJson(Map<String, dynamic> json) => StatusData(
      id: json['id'] as int?,
      invoiceno: json['invoiceno'] as String?,
      date: json['date'] as String?,
      district: json['district'] as String?,
      company: json['company'] as String?,
      address: json['address'] as String?,
      phone: json['phone'],
      weight: json['weight'] as String?,
      pcs: json['pcs'] as String?,
      shipmentname: json['shipmentname'] as String?,
      sendingdate: json['sendingdate'] as String?,
      recievingdate: json['recievingdate'] as String?,
      status: json['status'] as int?,
      senderAddress: json['sender_address'],
      recieverAddress: json['reciever_address'] as String?,
      rewight: json['rewight'] as int?,
      goodsDesc: json['goods_desc'] as String?,
      goodsStatus: json['goods_status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      tripSheetId: json['trip_sheet_id'] as int?,
      invoiceNumber: json['invoice_number'] as String?,
      cargoId: json['cargo_id'] as String?,
      cargoName: json['cargo_name'] as String?,
      place: json['place'] as String?,
      mobilenumber: json['mobilenumber'] as String?,
      quantity: json['quantity'] as int?,
      message: json['message'],
      image: json['image'],
      goodsId: json['goods_id'],
    );

Map<String, dynamic> _$StatusDataToJson(StatusData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiceno': instance.invoiceno,
      'date': instance.date,
      'district': instance.district,
      'company': instance.company,
      'address': instance.address,
      'phone': instance.phone,
      'weight': instance.weight,
      'pcs': instance.pcs,
      'shipmentname': instance.shipmentname,
      'sendingdate': instance.sendingdate,
      'recievingdate': instance.recievingdate,
      'status': instance.status,
      'sender_address': instance.senderAddress,
      'reciever_address': instance.recieverAddress,
      'rewight': instance.rewight,
      'goods_desc': instance.goodsDesc,
      'goods_status': instance.goodsStatus,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'trip_sheet_id': instance.tripSheetId,
      'invoice_number': instance.invoiceNumber,
      'cargo_id': instance.cargoId,
      'cargo_name': instance.cargoName,
      'place': instance.place,
      'mobilenumber': instance.mobilenumber,
      'quantity': instance.quantity,
      'message': instance.message,
      'image': instance.image,
      'goods_id': instance.goodsId,
    };
