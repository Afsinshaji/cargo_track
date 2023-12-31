part of 'cargo_bloc.dart';

@freezed
class CargoState with _$CargoState {
  const factory CargoState.cargoInitial() = cargoInitial;
  const factory CargoState.addedCargo(
      {required bool isLoading,
      required bool isError,
      required bool isAdded}) = addedCargo;
}

// import 'package:cargo_track/domain/cargo/models/cargo/cargo.dart';
// import 'package:cargo_track/domain/status/status/status.dart';
// import 'package:cargo_track/infrastructure/cargo/cargo_implementation.dart';

// class CargoApplication {
//   Future<Status> addCargo(Cargo cargo) async {
//     final result = await CargoImplementation.instance.addCargo(cargo: cargo);

//     return result;
//   }
// }
