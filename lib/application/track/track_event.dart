part of 'track_bloc.dart';

@freezed
class TrackEvent with _$TrackEvent {
  const factory TrackEvent.getTrackingStatus({required String searchingNumber}) = getTrackingStatus;
}