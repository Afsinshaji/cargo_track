import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/trip_sheet/trip_sheet/datum.dart';

import 'package:dartz/dartz.dart';

abstract class TripSheetService {
  Future<Either<MainFailure, List<TripSheetDatum>>> getCargo(
      {required int tripNumber});
}
