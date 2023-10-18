import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/reports/all_cargo_name/all_cargo_name.dart';
import 'package:cargo_track/domain/reports/all_cargo_name/datum.dart';
import 'package:cargo_track/domain/reports/all_reports/all_reports/all_reports.dart';
import 'package:cargo_track/domain/reports/all_reports/all_reports/datum.dart';
import 'package:cargo_track/domain/reports/all_vehicle/all_vehicle.dart';

import 'package:cargo_track/domain/reports/all_vehicle/datum.dart';
import 'package:cargo_track/domain/reports/reports_service.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class ReportsImplementation extends ReportsService {
  // creating a singleton
  ReportsImplementation.internal();
  static ReportsImplementation instance = ReportsImplementation.internal();
  ReportsImplementation factory() {
    return instance;
  }

  //
  @override
  Future<Either<MainFailure, List<AllCargoData>>> getAllCargoName() async {
    try {
      const url = ApiEndPoints.getAllCargoName;
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
      if (httpresponse.statusCode == 200 || httpresponse.statusCode == 201) {
        final responsebody = jsonDecode(httpresponse.body);

        final result = AllCargoName.fromJson(responsebody);

        return Right(result.data!);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<AllVehicleData>>> getAllVehicle() async {
    try {
      const url = ApiEndPoints.getAllVehicle;
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
      if (httpresponse.statusCode == 200 || httpresponse.statusCode == 201) {
        final responsebody = jsonDecode(httpresponse.body);

        final result = AllVehicle.fromJson(responsebody);

        return Right(result.data!);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<AllReportsData>>> getAllReports()async {
      try {
      const url = ApiEndPoints.getAllReports;
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
      if (httpresponse.statusCode == 200 || httpresponse.statusCode == 201) {
        final responsebody = jsonDecode(httpresponse.body);

        final result = AllReports.fromJson(responsebody);

        return Right(result.data!);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
