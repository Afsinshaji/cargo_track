part of 'all_trip_sheet_bloc.dart';

@freezed
class AllTripSheetState with _$AllTripSheetState {
  const factory AllTripSheetState.allTripSheetInitial() = allTripSheetInitial;
  const factory AllTripSheetState.displayingAllTripSheet({
    required bool isLoading,
    required bool isError,
    required List<Datum> allTripSheetList,
  }) = displayingAllTripSheet;
}
