import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/invoice/invoice/invoice.dart';
import 'package:cargo_track/domain/invoice/invoice_service.dart';

import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:dartz/dartz.dart';
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
  Future<Either<MainFailure, Invoice>> getInvoice(
      {required String invoicenumber}) async {
    try {
      Invoice invoice;
      final url = "${ApiEndPoints.getInvoice}$invoicenumber";
      String? token = await StorageService.instance.readSecureData('authToken');
      token ??= '';
      //using http
      final uri = Uri.parse(url);
      final headers = {
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      };

      final httpresponse = await http.get(
        uri,
        headers: headers,
      );
      log(httpresponse.statusCode.toString());
      if (httpresponse.statusCode == 200 || httpresponse.statusCode == 201) {
        final responsebody = jsonDecode(httpresponse.body);
        invoice = Invoice.fromJson(responsebody);

        return right(invoice);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
