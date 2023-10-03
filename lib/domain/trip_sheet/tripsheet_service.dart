import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/trip_sheet/models/trip_sheet/trip_sheet.dart';
import 'package:dartz/dartz.dart';

abstract class TripSheetService {
  Future<Either<MainFailure, List<TripSheet>>> getCargo(
      {required int tripNumber});
}
