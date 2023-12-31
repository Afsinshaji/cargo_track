import 'dart:convert';
import 'dart:developer';


import 'package:cargo_track/domain/barcode/barcode_service.dart';
import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class BarcodeImplementation extends BarcodeService {
  // creating a singleton
  BarcodeImplementation.internal();
  static BarcodeImplementation instance = BarcodeImplementation.internal();
  BarcodeImplementation factory() {
    return instance;
  }

  //

  @override
  Future<Either<MainFailure, bool>> addBarcode(
      {required String goodsId,
      required String irNum,
      required String invoiceNumber,
     }) async {
    try {
  

 

      const url = ApiEndPoints.addBarcode;
      String? token = await StorageService.instance.readSecureData('authToken');
      token ??= '';
      final uri = Uri.parse(url);
      final headers = {
        'Authorization': 'Bearer $token',
        // 'Accept': 'application/json',
        'Content-Type': 'application/json'
      };

      final body = jsonEncode({
        "goods_id": goodsId,
      "invoice_no":invoiceNumber,
        "lr_no": irNum
      });

      final httpResponse = await http.post(uri, headers: headers, body: body);
      log(httpResponse.statusCode.toString());
      if (httpResponse.statusCode == 200 || httpResponse.statusCode == 201) {
        return const Right(true);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
