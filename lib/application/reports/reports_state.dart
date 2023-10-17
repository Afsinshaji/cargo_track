part of 'reports_bloc.dart';

@freezed
class ReportsState with _$ReportsState {
  const factory ReportsState.reportsInitial() = reportsInitial;
  const factory ReportsState.displayingReports({
    required bool isLoading,
    required bool isError,
    required List<String> allCargoNameList,
    required List<String>allVehicleList,
  }) = displayingReports;
}
