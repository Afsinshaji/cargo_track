part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(
      {required String userName, required String password}) = login;
  const factory LoginEvent.loginInitialized() = loginInitialized;
}
