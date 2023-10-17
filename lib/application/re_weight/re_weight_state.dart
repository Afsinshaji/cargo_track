part of 're_weight_bloc.dart';

@freezed
class ReWeightState with _$ReWeightState {
  const factory ReWeightState.reWeightInitial() = reWeightInitial;
  const factory ReWeightState.showResult(
      {required bool isAdded, required bool isLoading}) = showResult;
}
