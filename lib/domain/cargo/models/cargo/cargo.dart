import 'package:json_annotation/json_annotation.dart';

part 'cargo.g.dart';

@JsonSerializable()
class Cargo {
  String? invoiceno;
  String? id;
  @JsonKey(name: 'trip_sheet_id')
  String? tripSheetId;
  String? district;
  String? company;
  String? address;
  int? phone;
  String? weight;
  String? pcs;

  Cargo({
    this.invoiceno,
    this.id,
    this.tripSheetId,
    this.district,
    this.company,
    this.address,
    this.phone,
    this.weight,
    this.pcs,
  });

  factory Cargo.fromJson(Map<String, dynamic> json) => _$CargoFromJson(json);

  Map<String, dynamic> toJson() => _$CargoToJson(this);
}
