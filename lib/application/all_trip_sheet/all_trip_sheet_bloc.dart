import 'package:bloc/bloc.dart';
import 'package:cargo_track/domain/all_trip_sheet/all_trip_sheet/datum.dart';
import 'package:cargo_track/infrastructure/all_trip_sheet/all_trip_sheet_implementation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_trip_sheet_event.dart';
part 'all_trip_sheet_state.dart';
part 'all_trip_sheet_bloc.freezed.dart';

class AllTripSheetBloc extends Bloc<AllTripSheetEvent, AllTripSheetState> {
  AllTripSheetBloc() : super(const allTripSheetInitial()) {
    on<getAllTripSheetList>((event, emit) async {
      emit(const displayingAllTripSheet(
        allTripSheetList: [],
        isError: false,
        isLoading: true,
      ));
      final result =
          await AllTripSheetImplementation.instance.getAllTripSheet();

      result.fold(
          (l) => emit(const displayingAllTripSheet(
                allTripSheetList: [],
                isError: true,
                isLoading: false,
              )),
          (r) => emit(displayingAllTripSheet(
                allTripSheetList: r,
                isError: false,
                isLoading: false,
              )));
    });
  }
}
