import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class AllVehicleData {
  int? id;
  @JsonKey(name: 'vehicle_number')
  String? vehicleNumber;

  AllVehicleData({this.id, this.vehicleNumber});

  factory AllVehicleData.fromJson(Map<String, dynamic> json) =>
      _$AllVehicleDataFromJson(json);

  Map<String, dynamic> toJson() => _$AllVehicleDataToJson(this);
}
