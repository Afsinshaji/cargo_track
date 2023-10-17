import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'all_cargo_name.g.dart';

@JsonSerializable()
class AllCargoName {
  String? success;
  String? status;
  List<AllCargoData>? data;

  AllCargoName({this.success, this.status, this.data});

  factory AllCargoName.fromJson(Map<String, dynamic> json) {
    return _$AllCargoNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllCargoNameToJson(this);
}
