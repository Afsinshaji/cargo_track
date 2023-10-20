import 'package:bloc/bloc.dart';
import 'package:cargo_track/domain/track/models/datum.dart';
import 'package:cargo_track/infrastructure/track/track_implementation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_event.dart';
part 'track_state.dart';
part 'track_bloc.freezed.dart';

class TrackBloc extends Bloc<TrackEvent, TrackState> {
  TrackBloc() : super(const trackInitial()) {
    on<getTrackingStatus>((event, emit) async {
      emit(const displayStatus(
        cargoList: [],
        isError: false,
        isLoading: true,
      ));
      final result = await TrackImplementation.instance
          .getTrackingStatus(searchingNumber: event.searchingNumber);
      result.fold(
          (l) => emit(const displayStatus(
                cargoList: [],
                isError: true,
                isLoading: false,
              )),
          (r) => emit(displayStatus(
                cargoList: r,
                isError: false,
                isLoading: false,
              )));
    });
  }
}
