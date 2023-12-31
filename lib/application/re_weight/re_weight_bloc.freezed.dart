// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 're_weight_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReWeightEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reWeight, String goodsId) addReWeight,
    required TResult Function() initializeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reWeight, String goodsId)? addReWeight,
    TResult? Function()? initializeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reWeight, String goodsId)? addReWeight,
    TResult Function()? initializeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addReWeight value) addReWeight,
    required TResult Function(initializeEvent value) initializeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addReWeight value)? addReWeight,
    TResult? Function(initializeEvent value)? initializeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addReWeight value)? addReWeight,
    TResult Function(initializeEvent value)? initializeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReWeightEventCopyWith<$Res> {
  factory $ReWeightEventCopyWith(
          ReWeightEvent value, $Res Function(ReWeightEvent) then) =
      _$ReWeightEventCopyWithImpl<$Res, ReWeightEvent>;
}

/// @nodoc
class _$ReWeightEventCopyWithImpl<$Res, $Val extends ReWeightEvent>
    implements $ReWeightEventCopyWith<$Res> {
  _$ReWeightEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addReWeightCopyWith<$Res> {
  factory _$$addReWeightCopyWith(
          _$addReWeight value, $Res Function(_$addReWeight) then) =
      __$$addReWeightCopyWithImpl<$Res>;
  @useResult
  $Res call({String reWeight, String goodsId});
}

/// @nodoc
class __$$addReWeightCopyWithImpl<$Res>
    extends _$ReWeightEventCopyWithImpl<$Res, _$addReWeight>
    implements _$$addReWeightCopyWith<$Res> {
  __$$addReWeightCopyWithImpl(
      _$addReWeight _value, $Res Function(_$addReWeight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reWeight = null,
    Object? goodsId = null,
  }) {
    return _then(_$addReWeight(
      reWeight: null == reWeight
          ? _value.reWeight
          : reWeight // ignore: cast_nullable_to_non_nullable
              as String,
      goodsId: null == goodsId
          ? _value.goodsId
          : goodsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addReWeight implements addReWeight {
  const _$addReWeight({required this.reWeight, required this.goodsId});

  @override
  final String reWeight;
  @override
  final String goodsId;

  @override
  String toString() {
    return 'ReWeightEvent.addReWeight(reWeight: $reWeight, goodsId: $goodsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addReWeight &&
            (identical(other.reWeight, reWeight) ||
                other.reWeight == reWeight) &&
            (identical(other.goodsId, goodsId) || other.goodsId == goodsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reWeight, goodsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addReWeightCopyWith<_$addReWeight> get copyWith =>
      __$$addReWeightCopyWithImpl<_$addReWeight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reWeight, String goodsId) addReWeight,
    required TResult Function() initializeEvent,
  }) {
    return addReWeight(reWeight, goodsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reWeight, String goodsId)? addReWeight,
    TResult? Function()? initializeEvent,
  }) {
    return addReWeight?.call(reWeight, goodsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reWeight, String goodsId)? addReWeight,
    TResult Function()? initializeEvent,
    required TResult orElse(),
  }) {
    if (addReWeight != null) {
      return addReWeight(reWeight, goodsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addReWeight value) addReWeight,
    required TResult Function(initializeEvent value) initializeEvent,
  }) {
    return addReWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addReWeight value)? addReWeight,
    TResult? Function(initializeEvent value)? initializeEvent,
  }) {
    return addReWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addReWeight value)? addReWeight,
    TResult Function(initializeEvent value)? initializeEvent,
    required TResult orElse(),
  }) {
    if (addReWeight != null) {
      return addReWeight(this);
    }
    return orElse();
  }
}

abstract class addReWeight implements ReWeightEvent {
  const factory addReWeight(
      {required final String reWeight,
      required final String goodsId}) = _$addReWeight;

  String get reWeight;
  String get goodsId;
  @JsonKey(ignore: true)
  _$$addReWeightCopyWith<_$addReWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$initializeEventCopyWith<$Res> {
  factory _$$initializeEventCopyWith(
          _$initializeEvent value, $Res Function(_$initializeEvent) then) =
      __$$initializeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initializeEventCopyWithImpl<$Res>
    extends _$ReWeightEventCopyWithImpl<$Res, _$initializeEvent>
    implements _$$initializeEventCopyWith<$Res> {
  __$$initializeEventCopyWithImpl(
      _$initializeEvent _value, $Res Function(_$initializeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initializeEvent implements initializeEvent {
  const _$initializeEvent();

  @override
  String toString() {
    return 'ReWeightEvent.initializeEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initializeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reWeight, String goodsId) addReWeight,
    required TResult Function() initializeEvent,
  }) {
    return initializeEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reWeight, String goodsId)? addReWeight,
    TResult? Function()? initializeEvent,
  }) {
    return initializeEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reWeight, String goodsId)? addReWeight,
    TResult Function()? initializeEvent,
    required TResult orElse(),
  }) {
    if (initializeEvent != null) {
      return initializeEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addReWeight value) addReWeight,
    required TResult Function(initializeEvent value) initializeEvent,
  }) {
    return initializeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addReWeight value)? addReWeight,
    TResult? Function(initializeEvent value)? initializeEvent,
  }) {
    return initializeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addReWeight value)? addReWeight,
    TResult Function(initializeEvent value)? initializeEvent,
    required TResult orElse(),
  }) {
    if (initializeEvent != null) {
      return initializeEvent(this);
    }
    return orElse();
  }
}

abstract class initializeEvent implements ReWeightEvent {
  const factory initializeEvent() = _$initializeEvent;
}

/// @nodoc
mixin _$ReWeightState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reWeightInitial,
    required TResult Function(bool isAdded, bool isLoading) showResult,
    required TResult Function() initializing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reWeightInitial,
    TResult? Function(bool isAdded, bool isLoading)? showResult,
    TResult? Function()? initializing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reWeightInitial,
    TResult Function(bool isAdded, bool isLoading)? showResult,
    TResult Function()? initializing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(reWeightInitial value) reWeightInitial,
    required TResult Function(showResult value) showResult,
    required TResult Function(initializing value) initializing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(reWeightInitial value)? reWeightInitial,
    TResult? Function(showResult value)? showResult,
    TResult? Function(initializing value)? initializing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(reWeightInitial value)? reWeightInitial,
    TResult Function(showResult value)? showResult,
    TResult Function(initializing value)? initializing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReWeightStateCopyWith<$Res> {
  factory $ReWeightStateCopyWith(
          ReWeightState value, $Res Function(ReWeightState) then) =
      _$ReWeightStateCopyWithImpl<$Res, ReWeightState>;
}

/// @nodoc
class _$ReWeightStateCopyWithImpl<$Res, $Val extends ReWeightState>
    implements $ReWeightStateCopyWith<$Res> {
  _$ReWeightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$reWeightInitialCopyWith<$Res> {
  factory _$$reWeightInitialCopyWith(
          _$reWeightInitial value, $Res Function(_$reWeightInitial) then) =
      __$$reWeightInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$reWeightInitialCopyWithImpl<$Res>
    extends _$ReWeightStateCopyWithImpl<$Res, _$reWeightInitial>
    implements _$$reWeightInitialCopyWith<$Res> {
  __$$reWeightInitialCopyWithImpl(
      _$reWeightInitial _value, $Res Function(_$reWeightInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$reWeightInitial implements reWeightInitial {
  const _$reWeightInitial();

  @override
  String toString() {
    return 'ReWeightState.reWeightInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$reWeightInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reWeightInitial,
    required TResult Function(bool isAdded, bool isLoading) showResult,
    required TResult Function() initializing,
  }) {
    return reWeightInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reWeightInitial,
    TResult? Function(bool isAdded, bool isLoading)? showResult,
    TResult? Function()? initializing,
  }) {
    return reWeightInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reWeightInitial,
    TResult Function(bool isAdded, bool isLoading)? showResult,
    TResult Function()? initializing,
    required TResult orElse(),
  }) {
    if (reWeightInitial != null) {
      return reWeightInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(reWeightInitial value) reWeightInitial,
    required TResult Function(showResult value) showResult,
    required TResult Function(initializing value) initializing,
  }) {
    return reWeightInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(reWeightInitial value)? reWeightInitial,
    TResult? Function(showResult value)? showResult,
    TResult? Function(initializing value)? initializing,
  }) {
    return reWeightInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(reWeightInitial value)? reWeightInitial,
    TResult Function(showResult value)? showResult,
    TResult Function(initializing value)? initializing,
    required TResult orElse(),
  }) {
    if (reWeightInitial != null) {
      return reWeightInitial(this);
    }
    return orElse();
  }
}

abstract class reWeightInitial implements ReWeightState {
  const factory reWeightInitial() = _$reWeightInitial;
}

/// @nodoc
abstract class _$$showResultCopyWith<$Res> {
  factory _$$showResultCopyWith(
          _$showResult value, $Res Function(_$showResult) then) =
      __$$showResultCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAdded, bool isLoading});
}

/// @nodoc
class __$$showResultCopyWithImpl<$Res>
    extends _$ReWeightStateCopyWithImpl<$Res, _$showResult>
    implements _$$showResultCopyWith<$Res> {
  __$$showResultCopyWithImpl(
      _$showResult _value, $Res Function(_$showResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdded = null,
    Object? isLoading = null,
  }) {
    return _then(_$showResult(
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$showResult implements showResult {
  const _$showResult({required this.isAdded, required this.isLoading});

  @override
  final bool isAdded;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ReWeightState.showResult(isAdded: $isAdded, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$showResult &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAdded, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$showResultCopyWith<_$showResult> get copyWith =>
      __$$showResultCopyWithImpl<_$showResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reWeightInitial,
    required TResult Function(bool isAdded, bool isLoading) showResult,
    required TResult Function() initializing,
  }) {
    return showResult(isAdded, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reWeightInitial,
    TResult? Function(bool isAdded, bool isLoading)? showResult,
    TResult? Function()? initializing,
  }) {
    return showResult?.call(isAdded, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reWeightInitial,
    TResult Function(bool isAdded, bool isLoading)? showResult,
    TResult Function()? initializing,
    required TResult orElse(),
  }) {
    if (showResult != null) {
      return showResult(isAdded, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(reWeightInitial value) reWeightInitial,
    required TResult Function(showResult value) showResult,
    required TResult Function(initializing value) initializing,
  }) {
    return showResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(reWeightInitial value)? reWeightInitial,
    TResult? Function(showResult value)? showResult,
    TResult? Function(initializing value)? initializing,
  }) {
    return showResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(reWeightInitial value)? reWeightInitial,
    TResult Function(showResult value)? showResult,
    TResult Function(initializing value)? initializing,
    required TResult orElse(),
  }) {
    if (showResult != null) {
      return showResult(this);
    }
    return orElse();
  }
}

abstract class showResult implements ReWeightState {
  const factory showResult(
      {required final bool isAdded,
      required final bool isLoading}) = _$showResult;

  bool get isAdded;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$$showResultCopyWith<_$showResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$initializingCopyWith<$Res> {
  factory _$$initializingCopyWith(
          _$initializing value, $Res Function(_$initializing) then) =
      __$$initializingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initializingCopyWithImpl<$Res>
    extends _$ReWeightStateCopyWithImpl<$Res, _$initializing>
    implements _$$initializingCopyWith<$Res> {
  __$$initializingCopyWithImpl(
      _$initializing _value, $Res Function(_$initializing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initializing implements initializing {
  const _$initializing();

  @override
  String toString() {
    return 'ReWeightState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reWeightInitial,
    required TResult Function(bool isAdded, bool isLoading) showResult,
    required TResult Function() initializing,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reWeightInitial,
    TResult? Function(bool isAdded, bool isLoading)? showResult,
    TResult? Function()? initializing,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reWeightInitial,
    TResult Function(bool isAdded, bool isLoading)? showResult,
    TResult Function()? initializing,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(reWeightInitial value) reWeightInitial,
    required TResult Function(showResult value) showResult,
    required TResult Function(initializing value) initializing,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(reWeightInitial value)? reWeightInitial,
    TResult? Function(showResult value)? showResult,
    TResult? Function(initializing value)? initializing,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(reWeightInitial value)? reWeightInitial,
    TResult Function(showResult value)? showResult,
    TResult Function(initializing value)? initializing,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class initializing implements ReWeightState {
  const factory initializing() = _$initializing;
}
