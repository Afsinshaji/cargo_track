import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/trip_sheet/trip_sheet/datum.dart';

import 'package:cargo_track/domain/trip_sheet/trip_sheet/trip_sheet.dart';
import 'package:cargo_track/domain/trip_sheet/tripsheet_service.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class TripSheetImplementation extends TripSheetService {
  // creating a singleton
  TripSheetImplementation.internal();
  static TripSheetImplementation instance = TripSheetImplementation.internal();
  TripSheetImplementation factory() {
    return instance;
  }

  //

  @override
  Future<Either<MainFailure, List<TripSheetDatum>>> getCargo(
      {required int tripNumber}) async {
    try {
      final url = '${ApiEndPoints.tripSheet}$tripNumber';
      String? token = await StorageService.instance.readSecureData('authToken');
      token ??= '';
      final uri = Uri.parse(url);
      final headers = {
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      };
      final httpResponse = await http.get(uri, headers: headers);
      if (httpResponse.statusCode == 200 || httpResponse.statusCode == 201) {
        log(httpResponse.body.toString());

        log(httpResponse.body.toString());
        final responsebody = jsonDecode(httpResponse.body);

        final tripSheetResult = TripSheet.fromJson(responsebody);

        final List<TripSheetDatum> result = [];
        if (tripSheetResult.data != null) {
          for (int i = 0; i < tripSheetResult.data!.length; i++) {
            result.add(tripSheetResult.data![i]);
          }
        }
        log(result.toString());

        return right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
