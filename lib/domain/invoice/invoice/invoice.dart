import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'invoice.g.dart';

@JsonSerializable()
class Invoice {
  String? success;
  String? status;
  Data? data;

  Invoice({this.success, this.status, this.data});
  Invoice.empty();

  factory Invoice.fromJson(Map<String, dynamic> json) {
    return _$InvoiceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}
