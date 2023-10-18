import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'all_reports.g.dart';

@JsonSerializable()
class AllReports {
  String? success;
  String? status;
  List<AllReportsData>? data;

  AllReports({this.success, this.status, this.data});

  factory AllReports.fromJson(Map<String, dynamic> json) {
    return _$AllReportsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllReportsToJson(this);
}
