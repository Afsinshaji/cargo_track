import 'package:cargo_track/domain/trip_sheet/models/trip_sheet/trip_sheet.dart';
import 'package:cargo_track/infrastructure/trip_sheet/trip_sheet_implementation.dart';

class TripSheetApplication {
  Future<List<TripSheet>> getCargo(int tripNumber) async {
    final result =
        await TripSheetImplementation.instance.getCargo(tripNumber: tripNumber);

    return result;
  }
}
