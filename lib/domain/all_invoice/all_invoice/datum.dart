import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class InvoiceDatum {
  int? id;
  String? invoiceno;

  InvoiceDatum({this.id, this.invoiceno});

  factory InvoiceDatum.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDatumFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceDatumToJson(this);
}
