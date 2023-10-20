part of 'track_bloc.dart';

@freezed
class TrackState with _$TrackState {
  const factory TrackState.trackInitial() = trackInitial;
  const factory TrackState.displayStatus(
    {
     required bool isLoading,
     required bool isError,
     required List<StatusData>cargoList,
    }
  ) = displayStatus;
}
