import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'all_invoice.g.dart';

@JsonSerializable()
class AllInvoice {
  String? success;
  String? status;
  List<InvoiceDatum>? data;

  AllInvoice({this.success, this.status, this.data});

  factory AllInvoice.fromJson(Map<String, dynamic> json) {
    return _$AllInvoiceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllInvoiceToJson(this);
}
