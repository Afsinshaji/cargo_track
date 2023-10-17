import 'package:bloc/bloc.dart';
import 'package:cargo_track/domain/trip_sheet/trip_sheet/datum.dart';

import 'package:cargo_track/infrastructure/trip_sheet/trip_sheet_implementation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_sheet_event.dart';
part 'trip_sheet_state.dart';
part 'trip_sheet_bloc.freezed.dart';

class TripSheetBloc extends Bloc<TripSheetEvent, TripSheetState> {
  TripSheetBloc() : super(const tripSheetInitial()) {
    on<getCargo>((event, emit) async {
      emit(const displayTripSheet(
        cargoList: [],
        isError: false,
        isLoading: true,
      ));
      final result = await TripSheetImplementation.instance
          .getCargo(tripNumber: event.tripNumber);
      result.fold(
          (l) => emit(const displayTripSheet(
                cargoList: [],
                isError: true,
                isLoading: false,
              )),
          (r) => emit(displayTripSheet(
                cargoList: r,
                isError: false,
                isLoading: false,
              )));
    });
  }
}
