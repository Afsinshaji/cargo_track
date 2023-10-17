import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'all_vehicle.g.dart';

@JsonSerializable()
class AllVehicle {
  String? success;
  String? status;
  List<AllVehicleData>? data;

  AllVehicle({this.success, this.status, this.data});

  factory AllVehicle.fromJson(Map<String, dynamic> json) {
    return _$AllVehicleFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllVehicleToJson(this);
}
