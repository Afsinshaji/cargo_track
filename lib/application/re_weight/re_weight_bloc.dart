import 'package:bloc/bloc.dart';
import 'package:cargo_track/infrastructure/re_weight/re_weight_implementation.dart';
import 'package:cargo_track/prsentation/screens/invoice/screen_invoice.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 're_weight_event.dart';
part 're_weight_state.dart';
part 're_weight_bloc.freezed.dart';

class ReWeightBloc extends Bloc<ReWeightEvent, ReWeightState> {
  ReWeightBloc() : super(const reWeightInitial()) {
    on<addReWeight>((event, emit) async {
      emit(const showResult(isAdded: false, isLoading: true));
      final result = await ReWeightImplementation.instance
          .addReWeight(reWeight: event.reWeight, goodsId: event.goodsId);

      result.fold(
          (l) => emit(const showResult(isAdded: false, isLoading: false)),
          (r) => emit(const showResult(isAdded: true, isLoading: false)));
    });
    on<initializeEvent>((event, emit) async {
      emit(const initializing());
    });
  }
}
