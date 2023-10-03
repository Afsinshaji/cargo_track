import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

import 'all_trip_sheet/datum.dart';

abstract class AllTripSheetService {
  Future<Either<MainFailure, List<Datum>>> getAllTripSheet();
}
