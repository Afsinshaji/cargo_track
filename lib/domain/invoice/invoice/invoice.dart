import 'package:json_annotation/json_annotation.dart';

part 'invoice.g.dart';

@JsonSerializable()
class Invoice {
  String? id;
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
  String? status;
  @JsonKey(name: 'sender_address')
  dynamic senderAddress;
  @JsonKey(name: 'reciever_address')
  String? recieverAddress;
  String? rewight;
  @JsonKey(name: 'goods_desc')
  String? goodsDesc;
  @JsonKey(name: 'goods_status')
  String? goodsStatus;
  @JsonKey(name: 'lr_number')
  String? lrNumber;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  Invoice({
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
    this.lrNumber,
    this.createdAt,
    this.updatedAt,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) {
    return _$InvoiceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceToJson(this);

 List<String?> tolist() {
    return [
      id,
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
      status,
      senderAddress,
      recieverAddress,
      rewight,
      goodsDesc,
      goodsStatus,
      lrNumber,
      createdAt,
      updatedAt,
    ];
  }
}
