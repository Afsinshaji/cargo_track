import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
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
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  Data({
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
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
  List<String?> toList() {
    return [
      id.toString(),
      invoiceno,
      date,
      district,
      company,
      address,
      phone,
      weight,
      pcs,
      shipmentname,
      sendingdate,
      recievingdate,
      status.toString(),
      senderAddress,
      rewight.toString(),
      goodsDesc,
      goodsStatus,
      createdAt.toString(),
      updatedAt,
    ];
  }
}
