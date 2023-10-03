import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class ReWeightService {
  Future<Either<MainFailure, void>> addReWeight({required String reWeight});
}
