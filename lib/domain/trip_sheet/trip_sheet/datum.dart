import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class TripSheetDatum {
  int? id;
  @JsonKey(name: 'trip_sheet_id')
  int? tripSheetId;
  @JsonKey(name: 'goods_id')
  int? goodsId;
  @JsonKey(name: 'invoice_number')
  String? invoiceNumber;
  @JsonKey(name: 'cargo_id')
  String? cargoId;
  @JsonKey(name: 'cargo_name')
  String? cargoName;
  String? place;
  String? mobilenumber;
  int? quantity;
  String? weight;
  int? status;
  dynamic message;
  dynamic image;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  TripSheetDatum({
    this.id,
    this.tripSheetId,
    this.goodsId,
    this.invoiceNumber,
    this.cargoId,
    this.cargoName,
    this.place,
    this.mobilenumber,
    this.quantity,
    this.weight,
    this.status,
    this.message,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory TripSheetDatum.fromJson(Map<String, dynamic> json) =>
      _$TripSheetDatumFromJson(json);

  Map<String, dynamic> toJson() => _$TripSheetDatumToJson(this);
  List<String?> toListed() {
    return [
      id.toString(),
      tripSheetId.toString(),
      goodsId.toString(),
      invoiceNumber,
      cargoId,
      cargoName,
      place,
      mobilenumber,
      quantity.toString(),
      weight,
      status.toString(),
      message.toString(),
    ];
  }
}
