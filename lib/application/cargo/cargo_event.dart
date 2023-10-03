part of 'cargo_bloc.dart';

@freezed
class CargoEvent with _$CargoEvent {
  const factory CargoEvent.addCargo({required Cargo cargo}) = addCargo;
}
