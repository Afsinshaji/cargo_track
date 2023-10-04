import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/status/status/status.dart';
import 'package:dartz/dartz.dart';

abstract class ReWeightService {
  Future<Either<MainFailure, Status>> addReWeight({required String reWeight,required String goodsId});
}
