part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loginInitial() = loginInitial;
  const factory LoginState.loginAuth(
      {required bool isLoading,
      required bool isError,
      required Map statusMap}) = loginAuth;
}

// import 'dart:developer';

// import 'package:cargo_track/domain/login/models/login/login.dart';
// import 'package:cargo_track/infrastructure/login/login_implementation.dart';

// class LoginApplication {
//   Future<Map> login(
//       {required String userName, required String password}) async {
// final Login result = await LoginImplementation.instance
//     .login(userName: userName, password: password);
//     log(result.status.toString());
//   if (result.status == true) {
//     return {
//       'status': true,
//       'authToken': result.data!.apiToken ??= 'Not Found'
//     };
//   } else {
//     return {'status': false};
//   }
// }
// }
