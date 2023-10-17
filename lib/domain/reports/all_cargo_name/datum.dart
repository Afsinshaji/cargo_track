import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class AllCargoData {
  int? id;
  @JsonKey(name: 'cargo_name')
  String? cargoName;

  AllCargoData({this.id, this.cargoName});

  factory AllCargoData.fromJson(Map<String, dynamic> json) => _$AllCargoDataFromJson(json);

  Map<String, dynamic> toJson() => _$AllCargoDataToJson(this);
}
