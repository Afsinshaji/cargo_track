import 'package:cargo_track/domain/login/models/login/login.dart';
import 'package:cargo_track/infrastructure/login/login_implementation.dart';

class LoginApplication {
 Future<bool> login({required String userName, required String password}) async {
    final Login result = await LoginImplementation.instance
        .login(userName: userName, password: password);

    if (result.status == true) {
      return true;
    } else {
      return false;
    }
  }
}
