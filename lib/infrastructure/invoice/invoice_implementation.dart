import 'dart:convert';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/invoice/invoice_service.dart';
import 'package:cargo_track/domain/invoice/models/invoice.dart';
import 'package:http/http.dart' as http;

class InvoiceImplementation extends InvoiceService {
  // creating a singleton
  InvoiceImplementation.internal();
  static InvoiceImplementation instance = InvoiceImplementation.internal();
  InvoiceImplementation factory() {
    return instance;
  }

  //
  @override
  Future<Invoice> getInvoice({required String invoicenumber}) async {
    Invoice invoice;
    final url = "${ApiEndPoints.getInvoice}$invoicenumber";
    const String token = 'n6vmW4LtLQYlrevCkZnTqlwVoKeLJ1O5';

    //using http
    final uri = Uri.parse(url);
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final httpresponse = await http.get(
      uri,
      headers: headers,
    );
    if (httpresponse.statusCode == 401) {
      // print(httpresponse.body.toString());
    }
    final responsebody = jsonDecode(httpresponse.body);
    invoice = Invoice.fromJson(responsebody);
    return invoice;
  }
}
