import 'package:cargo_track/domain/status/status/status.dart';

import 'models/cargo/cargo.dart';

abstract class CargoService {
  Future<Status> addCargo({required Cargo cargo});
}
