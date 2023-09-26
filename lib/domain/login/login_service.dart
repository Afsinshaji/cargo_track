import 'package:cargo_track/domain/login/models/login/login.dart';

abstract class LoginService{
  Future<Login>login({required String userName, required String password});
}
