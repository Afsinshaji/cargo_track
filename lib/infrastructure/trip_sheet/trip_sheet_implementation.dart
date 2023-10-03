import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/trip_sheet/models/trip_sheet/trip_sheet.dart';
import 'package:cargo_track/domain/trip_sheet/tripsheet_service.dart';
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
  Future<Either<MainFailure, List<TripSheet>>> getCargo(
      {required int tripNumber}) async {
    final url = '${ApiEndPoints.tripSheet}/$tripNumber';
    final uri = Uri.parse(url);
    final headers = {
      'User-Agent': 'insomnia/2023.5.8',
      'Cookie': 'ci_session=8dd98d4359d4a2f9ddfc7e9ffde5ab1a032e0ecb',
      'Authorization': 'Bearer n6vmW4LtLQYlrevCkZnTqlwVoKeLJ1O5',
      'Accept': '*/*',
    };
    final httpResponse = await http.get(uri, headers: headers);

    if (httpResponse.statusCode == 401) {
      log(httpResponse.body.toString());
    }
    final responsebody = jsonDecode(httpResponse.body);
    List<TripSheet> result = [];
    for (int i = 0; i < responsebody.length; i++) {
      result.add(TripSheet.fromJson(responsebody[i]));
    }
    log(result.toString());
    return right(result);
  }
}
