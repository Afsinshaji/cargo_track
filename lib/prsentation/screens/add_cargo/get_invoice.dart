import 'dart:convert';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/invoice/invoice/invoice.dart';

import 'package:http/http.dart' as http;

class getinvoice {
  Future<Invoice?> getInvoice({required String invoicenumber}) async {
    Invoice? invoice;
    final url = "${ApiEndPoints.getInvoice}$invoicenumber";
    final String token = 'n6vmW4LtLQYlrevCkZnTqlwVoKeLJ1O5';
    print('hellooo');

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
      print('heiii');
      // print(httpresponse.body.toString());
      final responsebody = jsonDecode(httpresponse.body);
      invoice = Invoice.fromJson(responsebody);
    }
    return invoice;
  }
}
