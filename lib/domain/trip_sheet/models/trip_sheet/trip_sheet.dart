import 'package:json_annotation/json_annotation.dart';

part 'trip_sheet.g.dart';

@JsonSerializable()
class TripSheet {
  String? id;
  @JsonKey(name: 'trip_sheet_id')
  String? tripSheetId;
  @JsonKey(name: 'goods_id')
  String? goodsId;
  @JsonKey(name: 'invoice_number')
  String? invoiceNumber;
  @JsonKey(name: 'cargo_id')
  String? cargoId;
  @JsonKey(name: 'cargo_name')
  String? cargoName;
  String? place;
  String? mobilenumber;
  String? quantity;
  String? weight;
  String? status;
  dynamic message;
  dynamic image;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  TripSheet({
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

  factory TripSheet.fromJson(Map<String, dynamic> json) {
    return _$TripSheetFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripSheetToJson(this);
  List<String?> toList() {
    return [
      id,
      tripSheetId,
      goodsId,
      invoiceNumber,
      cargoId,
      cargoName,
      place,
      mobilenumber,
      quantity,
      weight,
      status,
      message,
      image,
      createdAt,
      updatedAt,
    ];
  }
}
