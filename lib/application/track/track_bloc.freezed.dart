// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackEvent {
  String get searchingNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchingNumber) getTrackingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchingNumber)? getTrackingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchingNumber)? getTrackingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getTrackingStatus value) getTrackingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getTrackingStatus value)? getTrackingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getTrackingStatus value)? getTrackingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackEventCopyWith<TrackEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackEventCopyWith<$Res> {
  factory $TrackEventCopyWith(
          TrackEvent value, $Res Function(TrackEvent) then) =
      _$TrackEventCopyWithImpl<$Res, TrackEvent>;
  @useResult
  $Res call({String searchingNumber});
}

/// @nodoc
class _$TrackEventCopyWithImpl<$Res, $Val extends TrackEvent>
    implements $TrackEventCopyWith<$Res> {
  _$TrackEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchingNumber = null,
  }) {
    return _then(_value.copyWith(
      searchingNumber: null == searchingNumber
          ? _value.searchingNumber
          : searchingNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$getTrackingStatusCopyWith<$Res>
    implements $TrackEventCopyWith<$Res> {
  factory _$$getTrackingStatusCopyWith(
          _$getTrackingStatus value, $Res Function(_$getTrackingStatus) then) =
      __$$getTrackingStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchingNumber});
}

/// @nodoc
class __$$getTrackingStatusCopyWithImpl<$Res>
    extends _$TrackEventCopyWithImpl<$Res, _$getTrackingStatus>
    implements _$$getTrackingStatusCopyWith<$Res> {
  __$$getTrackingStatusCopyWithImpl(
      _$getTrackingStatus _value, $Res Function(_$getTrackingStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchingNumber = null,
  }) {
    return _then(_$getTrackingStatus(
      searchingNumber: null == searchingNumber
          ? _value.searchingNumber
          : searchingNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getTrackingStatus implements getTrackingStatus {
  const _$getTrackingStatus({required this.searchingNumber});

  @override
  final String searchingNumber;

  @override
  String toString() {
    return 'TrackEvent.getTrackingStatus(searchingNumber: $searchingNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getTrackingStatus &&
            (identical(other.searchingNumber, searchingNumber) ||
                other.searchingNumber == searchingNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchingNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getTrackingStatusCopyWith<_$getTrackingStatus> get copyWith =>
      __$$getTrackingStatusCopyWithImpl<_$getTrackingStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchingNumber) getTrackingStatus,
  }) {
    return getTrackingStatus(searchingNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchingNumber)? getTrackingStatus,
  }) {
    return getTrackingStatus?.call(searchingNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchingNumber)? getTrackingStatus,
    required TResult orElse(),
  }) {
    if (getTrackingStatus != null) {
      return getTrackingStatus(searchingNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getTrackingStatus value) getTrackingStatus,
  }) {
    return getTrackingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getTrackingStatus value)? getTrackingStatus,
  }) {
    return getTrackingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getTrackingStatus value)? getTrackingStatus,
    required TResult orElse(),
  }) {
    if (getTrackingStatus != null) {
      return getTrackingStatus(this);
    }
    return orElse();
  }
}

abstract class getTrackingStatus implements TrackEvent {
  const factory getTrackingStatus({required final String searchingNumber}) =
      _$getTrackingStatus;

  @override
  String get searchingNumber;
  @override
  @JsonKey(ignore: true)
  _$$getTrackingStatusCopyWith<_$getTrackingStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trackInitial,
    required TResult Function(
            bool isLoading, bool isError, List<StatusData> cargoList)
        displayStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trackInitial,
    TResult? Function(bool isLoading, bool isError, List<StatusData> cargoList)?
        displayStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trackInitial,
    TResult Function(bool isLoading, bool isError, List<StatusData> cargoList)?
        displayStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(trackInitial value) trackInitial,
    required TResult Function(displayStatus value) displayStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(trackInitial value)? trackInitial,
    TResult? Function(displayStatus value)? displayStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(trackInitial value)? trackInitial,
    TResult Function(displayStatus value)? displayStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackStateCopyWith<$Res> {
  factory $TrackStateCopyWith(
          TrackState value, $Res Function(TrackState) then) =
      _$TrackStateCopyWithImpl<$Res, TrackState>;
}

/// @nodoc
class _$TrackStateCopyWithImpl<$Res, $Val extends TrackState>
    implements $TrackStateCopyWith<$Res> {
  _$TrackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$trackInitialCopyWith<$Res> {
  factory _$$trackInitialCopyWith(
          _$trackInitial value, $Res Function(_$trackInitial) then) =
      __$$trackInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$trackInitialCopyWithImpl<$Res>
    extends _$TrackStateCopyWithImpl<$Res, _$trackInitial>
    implements _$$trackInitialCopyWith<$Res> {
  __$$trackInitialCopyWithImpl(
      _$trackInitial _value, $Res Function(_$trackInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$trackInitial implements trackInitial {
  const _$trackInitial();

  @override
  String toString() {
    return 'TrackState.trackInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$trackInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trackInitial,
    required TResult Function(
            bool isLoading, bool isError, List<StatusData> cargoList)
        displayStatus,
  }) {
    return trackInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trackInitial,
    TResult? Function(bool isLoading, bool isError, List<StatusData> cargoList)?
        displayStatus,
  }) {
    return trackInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trackInitial,
    TResult Function(bool isLoading, bool isError, List<StatusData> cargoList)?
        displayStatus,
    required TResult orElse(),
  }) {
    if (trackInitial != null) {
      return trackInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(trackInitial value) trackInitial,
    required TResult Function(displayStatus value) displayStatus,
  }) {
    return trackInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(trackInitial value)? trackInitial,
    TResult? Function(displayStatus value)? displayStatus,
  }) {
    return trackInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(trackInitial value)? trackInitial,
    TResult Function(displayStatus value)? displayStatus,
    required TResult orElse(),
  }) {
    if (trackInitial != null) {
      return trackInitial(this);
    }
    return orElse();
  }
}

abstract class trackInitial implements TrackState {
  const factory trackInitial() = _$trackInitial;
}

/// @nodoc
abstract class _$$displayStatusCopyWith<$Res> {
  factory _$$displayStatusCopyWith(
          _$displayStatus value, $Res Function(_$displayStatus) then) =
      __$$displayStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, bool isError, List<StatusData> cargoList});
}

/// @nodoc
class __$$displayStatusCopyWithImpl<$Res>
    extends _$TrackStateCopyWithImpl<$Res, _$displayStatus>
    implements _$$displayStatusCopyWith<$Res> {
  __$$displayStatusCopyWithImpl(
      _$displayStatus _value, $Res Function(_$displayStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? cargoList = null,
  }) {
    return _then(_$displayStatus(
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
              as List<StatusData>,
    ));
  }
}

/// @nodoc

class _$displayStatus implements displayStatus {
  const _$displayStatus(
      {required this.isLoading,
      required this.isError,
      required final List<StatusData> cargoList})
      : _cargoList = cargoList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<StatusData> _cargoList;
  @override
  List<StatusData> get cargoList {
    if (_cargoList is EqualUnmodifiableListView) return _cargoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cargoList);
  }

  @override
  String toString() {
    return 'TrackState.displayStatus(isLoading: $isLoading, isError: $isError, cargoList: $cargoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayStatus &&
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
  _$$displayStatusCopyWith<_$displayStatus> get copyWith =>
      __$$displayStatusCopyWithImpl<_$displayStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trackInitial,
    required TResult Function(
            bool isLoading, bool isError, List<StatusData> cargoList)
        displayStatus,
  }) {
    return displayStatus(isLoading, isError, cargoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trackInitial,
    TResult? Function(bool isLoading, bool isError, List<StatusData> cargoList)?
        displayStatus,
  }) {
    return displayStatus?.call(isLoading, isError, cargoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trackInitial,
    TResult Function(bool isLoading, bool isError, List<StatusData> cargoList)?
        displayStatus,
    required TResult orElse(),
  }) {
    if (displayStatus != null) {
      return displayStatus(isLoading, isError, cargoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(trackInitial value) trackInitial,
    required TResult Function(displayStatus value) displayStatus,
  }) {
    return displayStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(trackInitial value)? trackInitial,
    TResult? Function(displayStatus value)? displayStatus,
  }) {
    return displayStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(trackInitial value)? trackInitial,
    TResult Function(displayStatus value)? displayStatus,
    required TResult orElse(),
  }) {
    if (displayStatus != null) {
      return displayStatus(this);
    }
    return orElse();
  }
}

abstract class displayStatus implements TrackState {
  const factory displayStatus(
      {required final bool isLoading,
      required final bool isError,
      required final List<StatusData> cargoList}) = _$displayStatus;

  bool get isLoading;
  bool get isError;
  List<StatusData> get cargoList;
  @JsonKey(ignore: true)
  _$$displayStatusCopyWith<_$displayStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
