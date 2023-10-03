import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'all_trip_sheet.g.dart';

@JsonSerializable()
class AllTripSheet {
  String? success;
  String? status;
  List<Datum>? data;

  AllTripSheet({this.success, this.status, this.data});

  factory AllTripSheet.fromJson(Map<String, dynamic> json) {
    return _$AllTripSheetFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllTripSheetToJson(this);
}
