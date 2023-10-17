part of 're_weight_bloc.dart';

@freezed
class ReWeightEvent with _$ReWeightEvent {
  const factory ReWeightEvent.addReWeight(
      {required String reWeight, required String goodsId}) = addReWeight;
}
