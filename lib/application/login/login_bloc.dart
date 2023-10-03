import 'package:bloc/bloc.dart';
import 'package:cargo_track/infrastructure/login/login_implementation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const loginInitial()) {
    on<login>((event, emit) async {
      emit(const loginAuth(
        statusMap: {},
        isError: false,
        isLoading: true,
      ));
      final result = await LoginImplementation.instance
          .login(userName: event.userName, password: event.password);

      result.fold(
          (l) => emit(const loginAuth(
                statusMap: {},
                isError: true,
                isLoading: false,
              )), (result) {
        if (result.status == '200') {
          final successMap = {
            'status': true,
            'authToken': result.data!.apiToken ??= ''
          };

          return emit(loginAuth(
            statusMap: successMap,
            isError: false,
            isLoading: false,
          ));
        } else {
          final failureMap = {'status': false};
          return emit(loginAuth(
            statusMap: failureMap,
            isError: false,
            isLoading: false,
          ));
        }
      });
    });
    on<loginInitialized>(
        (event, emit) => emit(const LoginState.loginInitial()));
  }
}
