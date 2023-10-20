import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'tracking_status.g.dart';

@JsonSerializable()
class TrackingStatus {
  String? success;
  String? status;
  List<StatusData>? data;

  TrackingStatus({this.success, this.status, this.data});

  factory TrackingStatus.fromJson(Map<String, dynamic> json) {
    return _$TrackingStatusFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrackingStatusToJson(this);
}
