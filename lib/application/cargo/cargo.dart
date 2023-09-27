import 'package:cargo_track/domain/cargo/models/cargo/cargo.dart';
import 'package:cargo_track/domain/status/status/status.dart';
import 'package:cargo_track/infrastructure/cargo/cargo_implementation.dart';

class CargoApplication {
  Future<Status> addCargo(Cargo cargo) async {
    final result = await CargoImplementation.instance.addCargo(cargo: cargo);

    return result;
  }
}
