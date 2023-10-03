import 'dart:convert';

import 'package:cargo_track/domain/all_trip_sheet/all_trip_sheet/all_trip_sheet.dart';
import 'package:cargo_track/domain/all_trip_sheet/all_trip_sheet/datum.dart';
import 'package:cargo_track/domain/all_trip_sheet/all_trip_sheet_services.dart';
import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class AllTripSheetImplementation extends AllTripSheetService {
  // creating a singleton
  AllTripSheetImplementation.internal();
  static AllTripSheetImplementation instance =
      AllTripSheetImplementation.internal();
  AllTripSheetImplementation factory() {
    return instance;
  }

  //

  @override
  Future<Either<MainFailure, List<Datum>>> getAllTripSheet() async {
    const url = ApiEndPoints.getAllTripSheet;
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
    final responsebody = jsonDecode(httpresponse.body);
    final result = AllTripSheet.fromJson(responsebody);

    return Right(result.data ??= []);
  }
}
