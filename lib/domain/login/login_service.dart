import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/login/models/login/login.dart';
import 'package:dartz/dartz.dart';

abstract class LoginService {
  Future<Either<MainFailure, Login>> login(
      {required String userName, required String password});
}
