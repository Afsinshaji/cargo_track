import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/status/status/status.dart';
import 'package:dartz/dartz.dart';

import 'models/cargo/cargo.dart';

abstract class CargoService {
  Future<Either<MainFailure, Status>> addCargo({required Cargo cargo});
}
