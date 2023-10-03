import 'package:bloc/bloc.dart';
import 'package:cargo_track/domain/cargo/models/cargo/cargo.dart';
import 'package:cargo_track/infrastructure/cargo/cargo_implementation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cargo_event.dart';
part 'cargo_state.dart';
part 'cargo_bloc.freezed.dart';

class CargoBloc extends Bloc<CargoEvent, CargoState> {
  CargoBloc() : super(const cargoInitial()) {
    on<addCargo>((event, emit) async {
      emit(const addedCargo(isLoading: true, isError: false, isAdded: false));
      final result =
          await CargoImplementation.instance.addCargo(cargo: event.cargo);
      result.fold(
          (l) => emit(const addedCargo(
                isAdded: false,
                isError: true,
                isLoading: false,
              )), (r) {
        if (r.status == 200) {
          return emit(const addedCargo(
            isAdded: true,
            isError: false,
            isLoading: false,
          ));
        } else {
          return emit(const addedCargo(
            isAdded: false,
            isError: true,
            isLoading: false,
          ));
        }
      });
    });
  }
}
