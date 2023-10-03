import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/all_invoice/all_invoice/all_invoice.dart';
import 'package:cargo_track/domain/all_invoice/all_invoice/datum.dart';
import 'package:cargo_track/domain/all_invoice/all_invoice_services.dart';
import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class AllInvoiceImplementation extends AllInvoiceService {
  // creating a singleton
  AllInvoiceImplementation.internal();
  static AllInvoiceImplementation instance =
      AllInvoiceImplementation.internal();
  AllInvoiceImplementation factory() {
    return instance;
  }

  //

  @override
  Future<Either<MainFailure, List<InvoiceDatum>>> getAllInvoice() async {
    const url = ApiEndPoints.getAllInvoice;
    log(url);
    String? authToken =
        await StorageService.instance.readSecureData('authToken');
    authToken ??= '';
    final uri = Uri.parse(url);
    final headers = {
      'Authorization': 'Bearer $authToken',
      'Accept': 'application/json',
    };
    final httpresponse = await http.get(
      uri,
      headers: headers,
    );
    if (httpresponse.statusCode == 200) {}

    final responsebody = jsonDecode(httpresponse.body);
    final result = AllInvoice.fromJson(responsebody);

    return Right(result.data ??= []);
  }
}
