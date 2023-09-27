import 'package:cargo_track/domain/login/models/login/login.dart';
import 'package:cargo_track/infrastructure/login/login_implementation.dart';

class LoginApplication {

  Future<Map> login(

      {required String userName, required String password}) async {
    final Login result = await LoginImplementation.instance
        .login(userName: userName, password: password);

    if (result.status == true) {
      return {
        'status': true,
        'authToken': result.data!.apiToken ??= 'Not Found'
      };
    } else {
      return {'status': false};
    }
  }
}
