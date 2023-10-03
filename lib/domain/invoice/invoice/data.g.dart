// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
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
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
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
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt,
    };
