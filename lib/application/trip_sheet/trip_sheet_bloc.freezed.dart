// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripSheetEvent {
  int get tripNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tripNumber) getCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tripNumber)? getCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tripNumber)? getCargo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getCargo value) getCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getCargo value)? getCargo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getCargo value)? getCargo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripSheetEventCopyWith<TripSheetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSheetEventCopyWith<$Res> {
  factory $TripSheetEventCopyWith(
          TripSheetEvent value, $Res Function(TripSheetEvent) then) =
      _$TripSheetEventCopyWithImpl<$Res, TripSheetEvent>;
  @useResult
  $Res call({int tripNumber});
}

/// @nodoc
class _$TripSheetEventCopyWithImpl<$Res, $Val extends TripSheetEvent>
    implements $TripSheetEventCopyWith<$Res> {
  _$TripSheetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripNumber = null,
  }) {
    return _then(_value.copyWith(
      tripNumber: null == tripNumber
          ? _value.tripNumber
          : tripNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$getCargoCopyWith<$Res>
    implements $TripSheetEventCopyWith<$Res> {
  factory _$$getCargoCopyWith(
          _$getCargo value, $Res Function(_$getCargo) then) =
      __$$getCargoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tripNumber});
}

/// @nodoc
class __$$getCargoCopyWithImpl<$Res>
    extends _$TripSheetEventCopyWithImpl<$Res, _$getCargo>
    implements _$$getCargoCopyWith<$Res> {
  __$$getCargoCopyWithImpl(_$getCargo _value, $Res Function(_$getCargo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripNumber = null,
  }) {
    return _then(_$getCargo(
      tripNumber: null == tripNumber
          ? _value.tripNumber
          : tripNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$getCargo implements getCargo {
  const _$getCargo({required this.tripNumber});

  @override
  final int tripNumber;

  @override
  String toString() {
    return 'TripSheetEvent.getCargo(tripNumber: $tripNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCargo &&
            (identical(other.tripNumber, tripNumber) ||
                other.tripNumber == tripNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCargoCopyWith<_$getCargo> get copyWith =>
      __$$getCargoCopyWithImpl<_$getCargo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tripNumber) getCargo,
  }) {
    return getCargo(tripNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tripNumber)? getCargo,
  }) {
    return getCargo?.call(tripNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tripNumber)? getCargo,
    required TResult orElse(),
  }) {
    if (getCargo != null) {
      return getCargo(tripNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getCargo value) getCargo,
  }) {
    return getCargo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getCargo value)? getCargo,
  }) {
    return getCargo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getCargo value)? getCargo,
    required TResult orElse(),
  }) {
    if (getCargo != null) {
      return getCargo(this);
    }
    return orElse();
  }
}

abstract class getCargo implements TripSheetEvent {
  const factory getCargo({required final int tripNumber}) = _$getCargo;

  @override
  int get tripNumber;
  @override
  @JsonKey(ignore: true)
  _$$getCargoCopyWith<_$getCargo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripSheetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tripSheetInitial,
    required TResult Function(
            bool isLoading, bool isError, List<TripSheet> cargoList)
        displayTripSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tripSheetInitial,
    TResult? Function(bool isLoading, bool isError, List<TripSheet> cargoList)?
        displayTripSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tripSheetInitial,
    TResult Function(bool isLoading, bool isError, List<TripSheet> cargoList)?
        displayTripSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(tripSheetInitial value) tripSheetInitial,
    required TResult Function(displayTripSheet value) displayTripSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(tripSheetInitial value)? tripSheetInitial,
    TResult? Function(displayTripSheet value)? displayTripSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(tripSheetInitial value)? tripSheetInitial,
    TResult Function(displayTripSheet value)? displayTripSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSheetStateCopyWith<$Res> {
  factory $TripSheetStateCopyWith(
          TripSheetState value, $Res Function(TripSheetState) then) =
      _$TripSheetStateCopyWithImpl<$Res, TripSheetState>;
}

/// @nodoc
class _$TripSheetStateCopyWithImpl<$Res, $Val extends TripSheetState>
    implements $TripSheetStateCopyWith<$Res> {
  _$TripSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$tripSheetInitialCopyWith<$Res> {
  factory _$$tripSheetInitialCopyWith(
          _$tripSheetInitial value, $Res Function(_$tripSheetInitial) then) =
      __$$tripSheetInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$tripSheetInitialCopyWithImpl<$Res>
    extends _$TripSheetStateCopyWithImpl<$Res, _$tripSheetInitial>
    implements _$$tripSheetInitialCopyWith<$Res> {
  __$$tripSheetInitialCopyWithImpl(
      _$tripSheetInitial _value, $Res Function(_$tripSheetInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$tripSheetInitial implements tripSheetInitial {
  const _$tripSheetInitial();

  @override
  String toString() {
    return 'TripSheetState.tripSheetInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$tripSheetInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tripSheetInitial,
    required TResult Function(
            bool isLoading, bool isError, List<TripSheet> cargoList)
        displayTripSheet,
  }) {
    return tripSheetInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tripSheetInitial,
    TResult? Function(bool isLoading, bool isError, List<TripSheet> cargoList)?
        displayTripSheet,
  }) {
    return tripSheetInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tripSheetInitial,
    TResult Function(bool isLoading, bool isError, List<TripSheet> cargoList)?
        displayTripSheet,
    required TResult orElse(),
  }) {
    if (tripSheetInitial != null) {
      return tripSheetInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(tripSheetInitial value) tripSheetInitial,
    required TResult Function(displayTripSheet value) displayTripSheet,
  }) {
    return tripSheetInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(tripSheetInitial value)? tripSheetInitial,
    TResult? Function(displayTripSheet value)? displayTripSheet,
  }) {
    return tripSheetInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(tripSheetInitial value)? tripSheetInitial,
    TResult Function(displayTripSheet value)? displayTripSheet,
    required TResult orElse(),
  }) {
    if (tripSheetInitial != null) {
      return tripSheetInitial(this);
    }
    return orElse();
  }
}

abstract class tripSheetInitial implements TripSheetState {
  const factory tripSheetInitial() = _$tripSheetInitial;
}

/// @nodoc
abstract class _$$displayTripSheetCopyWith<$Res> {
  factory _$$displayTripSheetCopyWith(
          _$displayTripSheet value, $Res Function(_$displayTripSheet) then) =
      __$$displayTripSheetCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, bool isError, List<TripSheet> cargoList});
}

/// @nodoc
class __$$displayTripSheetCopyWithImpl<$Res>
    extends _$TripSheetStateCopyWithImpl<$Res, _$displayTripSheet>
    implements _$$displayTripSheetCopyWith<$Res> {
  __$$displayTripSheetCopyWithImpl(
      _$displayTripSheet _value, $Res Function(_$displayTripSheet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? cargoList = null,
  }) {
    return _then(_$displayTripSheet(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      cargoList: null == cargoList
          ? _value._cargoList
          : cargoList // ignore: cast_nullable_to_non_nullable
              as List<TripSheet>,
    ));
  }
}

/// @nodoc

class _$displayTripSheet implements displayTripSheet {
  const _$displayTripSheet(
      {required this.isLoading,
      required this.isError,
      required final List<TripSheet> cargoList})
      : _cargoList = cargoList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<TripSheet> _cargoList;
  @override
  List<TripSheet> get cargoList {
    if (_cargoList is EqualUnmodifiableListView) return _cargoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cargoList);
  }

  @override
  String toString() {
    return 'TripSheetState.displayTripSheet(isLoading: $isLoading, isError: $isError, cargoList: $cargoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayTripSheet &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._cargoList, _cargoList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_cargoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayTripSheetCopyWith<_$displayTripSheet> get copyWith =>
      __$$displayTripSheetCopyWithImpl<_$displayTripSheet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tripSheetInitial,
    required TResult Function(
            bool isLoading, bool isError, List<TripSheet> cargoList)
        displayTripSheet,
  }) {
    return displayTripSheet(isLoading, isError, cargoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tripSheetInitial,
    TResult? Function(bool isLoading, bool isError, List<TripSheet> cargoList)?
        displayTripSheet,
  }) {
    return displayTripSheet?.call(isLoading, isError, cargoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tripSheetInitial,
    TResult Function(bool isLoading, bool isError, List<TripSheet> cargoList)?
        displayTripSheet,
    required TResult orElse(),
  }) {
    if (displayTripSheet != null) {
      return displayTripSheet(isLoading, isError, cargoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(tripSheetInitial value) tripSheetInitial,
    required TResult Function(displayTripSheet value) displayTripSheet,
  }) {
    return displayTripSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(tripSheetInitial value)? tripSheetInitial,
    TResult? Function(displayTripSheet value)? displayTripSheet,
  }) {
    return displayTripSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(tripSheetInitial value)? tripSheetInitial,
    TResult Function(displayTripSheet value)? displayTripSheet,
    required TResult orElse(),
  }) {
    if (displayTripSheet != null) {
      return displayTripSheet(this);
    }
    return orElse();
  }
}

abstract class displayTripSheet implements TripSheetState {
  const factory displayTripSheet(
      {required final bool isLoading,
      required final bool isError,
      required final List<TripSheet> cargoList}) = _$displayTripSheet;

  bool get isLoading;
  bool get isError;
  List<TripSheet> get cargoList;
  @JsonKey(ignore: true)
  _$$displayTripSheetCopyWith<_$displayTripSheet> get copyWith =>
      throw _privateConstructorUsedError;
}
