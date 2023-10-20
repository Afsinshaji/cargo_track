import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class StatusData {
  int? id;
  String? invoiceno;
  String? date;
  String? district;
  String? company;
  String? address;
  dynamic phone;
  String? weight;
  String? pcs;
  String? shipmentname;
  String? sendingdate;
  String? recievingdate;
  int? status;
  @JsonKey(name: 'sender_address')
  dynamic senderAddress;
  @JsonKey(name: 'reciever_address')
  String? recieverAddress;
  int? rewight;
  @JsonKey(name: 'goods_desc')
  String? goodsDesc;
  @JsonKey(name: 'goods_status')
  String? goodsStatus;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'trip_sheet_id')
  int? tripSheetId;
  @JsonKey(name: 'invoice_number')
  String? invoiceNumber;
  @JsonKey(name: 'cargo_id')
  String? cargoId;
  @JsonKey(name: 'cargo_name')
  String? cargoName;
  String? place;
  String? mobilenumber;
  int? quantity;
  dynamic message;
  dynamic image;
  @JsonKey(name: 'goods_id')
  dynamic goodsId;

  StatusData({
    this.id,
    this.invoiceno,
    this.date,
    this.district,
    this.company,
    this.address,
    this.phone,
    this.weight,
    this.pcs,
    this.shipmentname,
    this.sendingdate,
    this.recievingdate,
    this.status,
    this.senderAddress,
    this.recieverAddress,
    this.rewight,
    this.goodsDesc,
    this.goodsStatus,
    this.createdAt,
    this.updatedAt,
    this.tripSheetId,
    this.invoiceNumber,
    this.cargoId,
    this.cargoName,
    this.place,
    this.mobilenumber,
    this.quantity,
    this.message,
    this.image,
    this.goodsId,
  });

  factory StatusData.fromJson(Map<String, dynamic> json) => _$StatusDataFromJson(json);

  Map<String, dynamic> toJson() => _$StatusDataToJson(this);
}
