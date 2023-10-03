// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) login,
    required TResult Function() loginInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? login,
    TResult? Function()? loginInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? login,
    TResult Function()? loginInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(login value) login,
    required TResult Function(loginInitialized value) loginInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(login value)? login,
    TResult? Function(loginInitialized value)? loginInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(login value)? login,
    TResult Function(loginInitialized value)? loginInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$loginCopyWith<$Res> {
  factory _$$loginCopyWith(_$login value, $Res Function(_$login) then) =
      __$$loginCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$loginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$login>
    implements _$$loginCopyWith<$Res> {
  __$$loginCopyWithImpl(_$login _value, $Res Function(_$login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$login(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$login implements login {
  const _$login({required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.login(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$login &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginCopyWith<_$login> get copyWith =>
      __$$loginCopyWithImpl<_$login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) login,
    required TResult Function() loginInitialized,
  }) {
    return login(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? login,
    TResult? Function()? loginInitialized,
  }) {
    return login?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? login,
    TResult Function()? loginInitialized,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(login value) login,
    required TResult Function(loginInitialized value) loginInitialized,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(login value)? login,
    TResult? Function(loginInitialized value)? loginInitialized,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(login value)? login,
    TResult Function(loginInitialized value)? loginInitialized,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class login implements LoginEvent {
  const factory login(
      {required final String userName,
      required final String password}) = _$login;

  String get userName;
  String get password;
  @JsonKey(ignore: true)
  _$$loginCopyWith<_$login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loginInitializedCopyWith<$Res> {
  factory _$$loginInitializedCopyWith(
          _$loginInitialized value, $Res Function(_$loginInitialized) then) =
      __$$loginInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loginInitializedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$loginInitialized>
    implements _$$loginInitializedCopyWith<$Res> {
  __$$loginInitializedCopyWithImpl(
      _$loginInitialized _value, $Res Function(_$loginInitialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loginInitialized implements loginInitialized {
  const _$loginInitialized();

  @override
  String toString() {
    return 'LoginEvent.loginInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loginInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) login,
    required TResult Function() loginInitialized,
  }) {
    return loginInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? login,
    TResult? Function()? loginInitialized,
  }) {
    return loginInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? login,
    TResult Function()? loginInitialized,
    required TResult orElse(),
  }) {
    if (loginInitialized != null) {
      return loginInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(login value) login,
    required TResult Function(loginInitialized value) loginInitialized,
  }) {
    return loginInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(login value)? login,
    TResult? Function(loginInitialized value)? loginInitialized,
  }) {
    return loginInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(login value)? login,
    TResult Function(loginInitialized value)? loginInitialized,
    required TResult orElse(),
  }) {
    if (loginInitialized != null) {
      return loginInitialized(this);
    }
    return orElse();
  }
}

abstract class loginInitialized implements LoginEvent {
  const factory loginInitialized() = _$loginInitialized;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function(
            bool isLoading, bool isError, Map<dynamic, dynamic> statusMap)
        loginAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function(
            bool isLoading, bool isError, Map<dynamic, dynamic> statusMap)?
        loginAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function(
            bool isLoading, bool isError, Map<dynamic, dynamic> statusMap)?
        loginAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginInitial value) loginInitial,
    required TResult Function(loginAuth value) loginAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loginInitial value)? loginInitial,
    TResult? Function(loginAuth value)? loginAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginInitial value)? loginInitial,
    TResult Function(loginAuth value)? loginAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$loginInitialCopyWith<$Res> {
  factory _$$loginInitialCopyWith(
          _$loginInitial value, $Res Function(_$loginInitial) then) =
      __$$loginInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loginInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loginInitial>
    implements _$$loginInitialCopyWith<$Res> {
  __$$loginInitialCopyWithImpl(
      _$loginInitial _value, $Res Function(_$loginInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loginInitial implements loginInitial {
  const _$loginInitial();

  @override
  String toString() {
    return 'LoginState.loginInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loginInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function(
            bool isLoading, bool isError, Map<dynamic, dynamic> statusMap)
        loginAuth,
  }) {
    return loginInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function(
            bool isLoading, bool isError, Map<dynamic, dynamic> statusMap)?
        loginAuth,
  }) {
    return loginInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function(
            bool isLoading, bool isError, Map<dynamic, dynamic> statusMap)?
        loginAuth,
    required TResult orElse(),
  }) {
    if (loginInitial != null) {
      return loginInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginInitial value) loginInitial,
    required TResult Function(loginAuth value) loginAuth,
  }) {
    return loginInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loginInitial value)? loginInitial,
    TResult? Function(loginAuth value)? loginAuth,
  }) {
    return loginInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginInitial value)? loginInitial,
    TResult Function(loginAuth value)? loginAuth,
    required TResult orElse(),
  }) {
    if (loginInitial != null) {
      return loginInitial(this);
    }
    return orElse();
  }
}

abstract class loginInitial implements LoginState {
  const factory loginInitial() = _$loginInitial;
}

/// @nodoc
abstract class _$$loginAuthCopyWith<$Res> {
  factory _$$loginAuthCopyWith(
          _$loginAuth value, $Res Function(_$loginAuth) then) =
      __$$loginAuthCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, bool isError, Map<dynamic, dynamic> statusMap});
}

/// @nodoc
class __$$loginAuthCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loginAuth>
    implements _$$loginAuthCopyWith<$Res> {
  __$$loginAuthCopyWithImpl(
      _$loginAuth _value, $Res Function(_$loginAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? statusMap = null,
  }) {
    return _then(_$loginAuth(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      statusMap: null == statusMap
          ? _value._statusMap
          : statusMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$loginAuth implements loginAuth {
  const _$loginAuth(
      {required this.isLoading,
      required this.isError,
      required final Map<dynamic, dynamic> statusMap})
      : _statusMap = statusMap;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final Map<dynamic, dynamic> _statusMap;
  @override
  Map<dynamic, dynamic> get statusMap {
    if (_statusMap is EqualUnmodifiableMapView) return _statusMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_statusMap);
  }

  @override
  String toString() {
    return 'LoginState.loginAuth(isLoading: $isLoading, isError: $isError, statusMap: $statusMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginAuth &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._statusMap, _statusMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_statusMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginAuthCopyWith<_$loginAuth> get copyWith =>
      __$$loginAuthCopyWithImpl<_$loginAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function(
            bool isLoading, bool isError, Map<dynamic, dynamic> statusMap)
        loginAuth,
  }) {
    return loginAuth(isLoading, isError, statusMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function(
            bool isLoading, bool isError, Map<dynamic, dynamic> statusMap)?
        loginAuth,
  }) {
    return loginAuth?.call(isLoading, isError, statusMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function(
            bool isLoading, bool isError, Map<dynamic, dynamic> statusMap)?
        loginAuth,
    required TResult orElse(),
  }) {
    if (loginAuth != null) {
      return loginAuth(isLoading, isError, statusMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginInitial value) loginInitial,
    required TResult Function(loginAuth value) loginAuth,
  }) {
    return loginAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loginInitial value)? loginInitial,
    TResult? Function(loginAuth value)? loginAuth,
  }) {
    return loginAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginInitial value)? loginInitial,
    TResult Function(loginAuth value)? loginAuth,
    required TResult orElse(),
  }) {
    if (loginAuth != null) {
      return loginAuth(this);
    }
    return orElse();
  }
}

abstract class loginAuth implements LoginState {
  const factory loginAuth(
      {required final bool isLoading,
      required final bool isError,
      required final Map<dynamic, dynamic> statusMap}) = _$loginAuth;

  bool get isLoading;
  bool get isError;
  Map<dynamic, dynamic> get statusMap;
  @JsonKey(ignore: true)
  _$$loginAuthCopyWith<_$loginAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
