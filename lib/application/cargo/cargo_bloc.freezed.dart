// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cargo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CargoEvent {
  Cargo get cargo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cargo cargo) addCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Cargo cargo)? addCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cargo cargo)? addCargo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addCargo value) addCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addCargo value)? addCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addCargo value)? addCargo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CargoEventCopyWith<CargoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CargoEventCopyWith<$Res> {
  factory $CargoEventCopyWith(
          CargoEvent value, $Res Function(CargoEvent) then) =
      _$CargoEventCopyWithImpl<$Res, CargoEvent>;
  @useResult
  $Res call({Cargo cargo});
}

/// @nodoc
class _$CargoEventCopyWithImpl<$Res, $Val extends CargoEvent>
    implements $CargoEventCopyWith<$Res> {
  _$CargoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cargo = null,
  }) {
    return _then(_value.copyWith(
      cargo: null == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as Cargo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$addCargoCopyWith<$Res> implements $CargoEventCopyWith<$Res> {
  factory _$$addCargoCopyWith(
          _$addCargo value, $Res Function(_$addCargo) then) =
      __$$addCargoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Cargo cargo});
}

/// @nodoc
class __$$addCargoCopyWithImpl<$Res>
    extends _$CargoEventCopyWithImpl<$Res, _$addCargo>
    implements _$$addCargoCopyWith<$Res> {
  __$$addCargoCopyWithImpl(_$addCargo _value, $Res Function(_$addCargo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cargo = null,
  }) {
    return _then(_$addCargo(
      cargo: null == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as Cargo,
    ));
  }
}

/// @nodoc

class _$addCargo implements addCargo {
  const _$addCargo({required this.cargo});

  @override
  final Cargo cargo;

  @override
  String toString() {
    return 'CargoEvent.addCargo(cargo: $cargo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addCargo &&
            (identical(other.cargo, cargo) || other.cargo == cargo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cargo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addCargoCopyWith<_$addCargo> get copyWith =>
      __$$addCargoCopyWithImpl<_$addCargo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cargo cargo) addCargo,
  }) {
    return addCargo(cargo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Cargo cargo)? addCargo,
  }) {
    return addCargo?.call(cargo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cargo cargo)? addCargo,
    required TResult orElse(),
  }) {
    if (addCargo != null) {
      return addCargo(cargo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addCargo value) addCargo,
  }) {
    return addCargo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addCargo value)? addCargo,
  }) {
    return addCargo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addCargo value)? addCargo,
    required TResult orElse(),
  }) {
    if (addCargo != null) {
      return addCargo(this);
    }
    return orElse();
  }
}

abstract class addCargo implements CargoEvent {
  const factory addCargo({required final Cargo cargo}) = _$addCargo;

  @override
  Cargo get cargo;
  @override
  @JsonKey(ignore: true)
  _$$addCargoCopyWith<_$addCargo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CargoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cargoInitial,
    required TResult Function(bool isLoading, bool isError, bool isAdded)
        addedCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cargoInitial,
    TResult? Function(bool isLoading, bool isError, bool isAdded)? addedCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cargoInitial,
    TResult Function(bool isLoading, bool isError, bool isAdded)? addedCargo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cargoInitial value) cargoInitial,
    required TResult Function(addedCargo value) addedCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cargoInitial value)? cargoInitial,
    TResult? Function(addedCargo value)? addedCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cargoInitial value)? cargoInitial,
    TResult Function(addedCargo value)? addedCargo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CargoStateCopyWith<$Res> {
  factory $CargoStateCopyWith(
          CargoState value, $Res Function(CargoState) then) =
      _$CargoStateCopyWithImpl<$Res, CargoState>;
}

/// @nodoc
class _$CargoStateCopyWithImpl<$Res, $Val extends CargoState>
    implements $CargoStateCopyWith<$Res> {
  _$CargoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$cargoInitialCopyWith<$Res> {
  factory _$$cargoInitialCopyWith(
          _$cargoInitial value, $Res Function(_$cargoInitial) then) =
      __$$cargoInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$cargoInitialCopyWithImpl<$Res>
    extends _$CargoStateCopyWithImpl<$Res, _$cargoInitial>
    implements _$$cargoInitialCopyWith<$Res> {
  __$$cargoInitialCopyWithImpl(
      _$cargoInitial _value, $Res Function(_$cargoInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$cargoInitial implements cargoInitial {
  const _$cargoInitial();

  @override
  String toString() {
    return 'CargoState.cargoInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$cargoInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cargoInitial,
    required TResult Function(bool isLoading, bool isError, bool isAdded)
        addedCargo,
  }) {
    return cargoInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cargoInitial,
    TResult? Function(bool isLoading, bool isError, bool isAdded)? addedCargo,
  }) {
    return cargoInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cargoInitial,
    TResult Function(bool isLoading, bool isError, bool isAdded)? addedCargo,
    required TResult orElse(),
  }) {
    if (cargoInitial != null) {
      return cargoInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cargoInitial value) cargoInitial,
    required TResult Function(addedCargo value) addedCargo,
  }) {
    return cargoInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cargoInitial value)? cargoInitial,
    TResult? Function(addedCargo value)? addedCargo,
  }) {
    return cargoInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cargoInitial value)? cargoInitial,
    TResult Function(addedCargo value)? addedCargo,
    required TResult orElse(),
  }) {
    if (cargoInitial != null) {
      return cargoInitial(this);
    }
    return orElse();
  }
}

abstract class cargoInitial implements CargoState {
  const factory cargoInitial() = _$cargoInitial;
}

/// @nodoc
abstract class _$$addedCargoCopyWith<$Res> {
  factory _$$addedCargoCopyWith(
          _$addedCargo value, $Res Function(_$addedCargo) then) =
      __$$addedCargoCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, bool isError, bool isAdded});
}

/// @nodoc
class __$$addedCargoCopyWithImpl<$Res>
    extends _$CargoStateCopyWithImpl<$Res, _$addedCargo>
    implements _$$addedCargoCopyWith<$Res> {
  __$$addedCargoCopyWithImpl(
      _$addedCargo _value, $Res Function(_$addedCargo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isAdded = null,
  }) {
    return _then(_$addedCargo(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$addedCargo implements addedCargo {
  const _$addedCargo(
      {required this.isLoading, required this.isError, required this.isAdded});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isAdded;

  @override
  String toString() {
    return 'CargoState.addedCargo(isLoading: $isLoading, isError: $isError, isAdded: $isAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addedCargo &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, isAdded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addedCargoCopyWith<_$addedCargo> get copyWith =>
      __$$addedCargoCopyWithImpl<_$addedCargo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cargoInitial,
    required TResult Function(bool isLoading, bool isError, bool isAdded)
        addedCargo,
  }) {
    return addedCargo(isLoading, isError, isAdded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cargoInitial,
    TResult? Function(bool isLoading, bool isError, bool isAdded)? addedCargo,
  }) {
    return addedCargo?.call(isLoading, isError, isAdded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cargoInitial,
    TResult Function(bool isLoading, bool isError, bool isAdded)? addedCargo,
    required TResult orElse(),
  }) {
    if (addedCargo != null) {
      return addedCargo(isLoading, isError, isAdded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cargoInitial value) cargoInitial,
    required TResult Function(addedCargo value) addedCargo,
  }) {
    return addedCargo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cargoInitial value)? cargoInitial,
    TResult? Function(addedCargo value)? addedCargo,
  }) {
    return addedCargo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cargoInitial value)? cargoInitial,
    TResult Function(addedCargo value)? addedCargo,
    required TResult orElse(),
  }) {
    if (addedCargo != null) {
      return addedCargo(this);
    }
    return orElse();
  }
}

abstract class addedCargo implements CargoState {
  const factory addedCargo(
      {required final bool isLoading,
      required final bool isError,
      required final bool isAdded}) = _$addedCargo;

  bool get isLoading;
  bool get isError;
  bool get isAdded;
  @JsonKey(ignore: true)
  _$$addedCargoCopyWith<_$addedCargo> get copyWith =>
      throw _privateConstructorUsedError;
}
