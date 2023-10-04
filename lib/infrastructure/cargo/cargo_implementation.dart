import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/cargo/cargo_service.dart';
import 'package:cargo_track/domain/cargo/models/cargo/cargo.dart';
import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/status/status/status.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class CargoImplementation extends CargoService {
  // creating a singleton
  CargoImplementation.internal();
  static CargoImplementation instance = CargoImplementation.internal();
  CargoImplementation factory() {
    return instance;
  }

  //

  @override
  Future<Either<MainFailure, Status>> addCargo({required Cargo cargo}) async {
    const url = ApiEndPoints.addCargo;
    String? token = await StorageService.instance.readSecureData('authToken');
    token ??= '';
    final uri = Uri.parse(url);
    final headers = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
       'Content-Type': 'application/json'
    };
    final body = jsonEncode({
      "invoiceno": cargo.invoiceno,
      "goods_id": cargo.goodsId,
      "trip_sheet_id": cargo.tripSheetId,
      "district": cargo.district,
      "company": cargo.company,
      "address": cargo.address,
      "phone": cargo.phone,
      "weight": cargo.weight,
      "pcs": cargo.pcs,
      "status": "Tripsheet Created"
    });

    final httpResponse = await http.post(uri, headers: headers, body: body);

    if (httpResponse.statusCode == 401) {
      log(httpResponse.body.toString());
    }
    final responsebody = jsonDecode(httpResponse.body);

    final result = Status.fromJson(responsebody);
    log(result.status.toString());

    return Right(result);
  }
}
