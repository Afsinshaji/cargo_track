import 'package:cargo_track/domain/trip_sheet/models/trip_sheet/trip_sheet.dart';

abstract class TripSheetService {
  Future<List<TripSheet>> getCargo({required int tripNumber});
}
