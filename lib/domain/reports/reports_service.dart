import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/reports/all_cargo_name/datum.dart';
import 'package:cargo_track/domain/reports/all_reports/all_reports/datum.dart';

import 'package:cargo_track/domain/reports/all_vehicle/datum.dart';

import 'package:dartz/dartz.dart';

abstract class ReportsService {
  Future<Either<MainFailure, List<AllVehicleData>>> getAllVehicle();
  Future<Either<MainFailure, List<AllCargoData>>> getAllCargoName();
  Future<Either<MainFailure, List<AllReportsData>>> getAllReports();
}
