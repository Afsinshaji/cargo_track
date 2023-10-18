import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class AllReportsData {
  int? id;
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
  String? weight;
  int? status;

  dynamic image;

  @JsonKey(name: 'goods_id')
  dynamic goodsId;
  @JsonKey(name: 'vehicle_number')
  String? vehicleNumber;
  @JsonKey(name: 'driver_name')
  String? driverName;

  AllReportsData({
    this.id,
    this.tripSheetId,
    this.invoiceNumber,
    this.cargoId,
    this.cargoName,
    this.place,
    this.mobilenumber,
    this.quantity,
    this.weight,
    this.status,
    this.image,
    this.goodsId,
    this.vehicleNumber,
    this.driverName,
  });

  factory AllReportsData.fromJson(Map<String, dynamic> json) =>
      _$AllReportsDataFromJson(json);

  Map<String, dynamic> toJson() => _$AllReportsDataToJson(this);
}
