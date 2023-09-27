import 'package:shared_preferences/shared_preferences.dart';

class LoginAuthorization {
  // creating a singleton
  LoginAuthorization.internal();
  static LoginAuthorization instance = LoginAuthorization.internal();
  LoginAuthorization factory() {
    return instance;
  }
//

  Future setLoginTrue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('LoggedIn', true);
  }

  Future setLoginFalse() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('LoggedIn', false);
  }

  Future saveAuthorizationToken(String authToken) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('AuthToken', authToken);
  }

  Future<String> getaLoginAuthToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final String authToken = sharedPreferences.getString('AuthToken')!;
    return authToken;
  }

  Future deleteAuthToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('AuthToken', '');
  }

  Future<bool> getLoginStatus() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final status = sharedPreferences.getBool('LoggedIn');
    if (status != null) {
      return status;
    } else {
      return false;
    }
  }
}
