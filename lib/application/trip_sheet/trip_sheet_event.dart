part of 'trip_sheet_bloc.dart';

@freezed
class TripSheetEvent with _$TripSheetEvent {
  const factory TripSheetEvent.getCargo({required int tripNumber}) = getCargo;
}
