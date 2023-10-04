import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'trip_sheet.g.dart';

@JsonSerializable()
class TripSheet {
  String? success;
  String? status;
  List<TripSheetDatum>? data;

  TripSheet({this.success, this.status, this.data});

  factory TripSheet.fromJson(Map<String, dynamic> json) {
    return _$TripSheetFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripSheetToJson(this);
}
