// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barcode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BarcodeEvent {
  String get goodsId => throw _privateConstructorUsedError;
  String get irNum => throw _privateConstructorUsedError;
  File get invoiceBarcode => throw _privateConstructorUsedError;
  File get irBarcode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String goodsId, String irNum, File invoiceBarcode, File irBarcode)
        addBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String goodsId, String irNum, File invoiceBarcode, File irBarcode)?
        addBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String goodsId, String irNum, File invoiceBarcode, File irBarcode)?
        addBarcode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addBarcode value) addBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addBarcode value)? addBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addBarcode value)? addBarcode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BarcodeEventCopyWith<BarcodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeEventCopyWith<$Res> {
  factory $BarcodeEventCopyWith(
          BarcodeEvent value, $Res Function(BarcodeEvent) then) =
      _$BarcodeEventCopyWithImpl<$Res, BarcodeEvent>;
  @useResult
  $Res call(
      {String goodsId, String irNum, File invoiceBarcode, File irBarcode});
}

/// @nodoc
class _$BarcodeEventCopyWithImpl<$Res, $Val extends BarcodeEvent>
    implements $BarcodeEventCopyWith<$Res> {
  _$BarcodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodsId = null,
    Object? irNum = null,
    Object? invoiceBarcode = null,
    Object? irBarcode = null,
  }) {
    return _then(_value.copyWith(
      goodsId: null == goodsId
          ? _value.goodsId
          : goodsId // ignore: cast_nullable_to_non_nullable
              as String,
      irNum: null == irNum
          ? _value.irNum
          : irNum // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceBarcode: null == invoiceBarcode
          ? _value.invoiceBarcode
          : invoiceBarcode // ignore: cast_nullable_to_non_nullable
              as File,
      irBarcode: null == irBarcode
          ? _value.irBarcode
          : irBarcode // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$addBarcodeCopyWith<$Res>
    implements $BarcodeEventCopyWith<$Res> {
  factory _$$addBarcodeCopyWith(
          _$addBarcode value, $Res Function(_$addBarcode) then) =
      __$$addBarcodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String goodsId, String irNum, File invoiceBarcode, File irBarcode});
}

/// @nodoc
class __$$addBarcodeCopyWithImpl<$Res>
    extends _$BarcodeEventCopyWithImpl<$Res, _$addBarcode>
    implements _$$addBarcodeCopyWith<$Res> {
  __$$addBarcodeCopyWithImpl(
      _$addBarcode _value, $Res Function(_$addBarcode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodsId = null,
    Object? irNum = null,
    Object? invoiceBarcode = null,
    Object? irBarcode = null,
  }) {
    return _then(_$addBarcode(
      goodsId: null == goodsId
          ? _value.goodsId
          : goodsId // ignore: cast_nullable_to_non_nullable
              as String,
      irNum: null == irNum
          ? _value.irNum
          : irNum // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceBarcode: null == invoiceBarcode
          ? _value.invoiceBarcode
          : invoiceBarcode // ignore: cast_nullable_to_non_nullable
              as File,
      irBarcode: null == irBarcode
          ? _value.irBarcode
          : irBarcode // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$addBarcode implements addBarcode {
  const _$addBarcode(
      {required this.goodsId,
      required this.irNum,
      required this.invoiceBarcode,
      required this.irBarcode});

  @override
  final String goodsId;
  @override
  final String irNum;
  @override
  final File invoiceBarcode;
  @override
  final File irBarcode;

  @override
  String toString() {
    return 'BarcodeEvent.addBarcode(goodsId: $goodsId, irNum: $irNum, invoiceBarcode: $invoiceBarcode, irBarcode: $irBarcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addBarcode &&
            (identical(other.goodsId, goodsId) || other.goodsId == goodsId) &&
            (identical(other.irNum, irNum) || other.irNum == irNum) &&
            (identical(other.invoiceBarcode, invoiceBarcode) ||
                other.invoiceBarcode == invoiceBarcode) &&
            (identical(other.irBarcode, irBarcode) ||
                other.irBarcode == irBarcode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, goodsId, irNum, invoiceBarcode, irBarcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addBarcodeCopyWith<_$addBarcode> get copyWith =>
      __$$addBarcodeCopyWithImpl<_$addBarcode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String goodsId, String irNum, File invoiceBarcode, File irBarcode)
        addBarcode,
  }) {
    return addBarcode(goodsId, irNum, invoiceBarcode, irBarcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String goodsId, String irNum, File invoiceBarcode, File irBarcode)?
        addBarcode,
  }) {
    return addBarcode?.call(goodsId, irNum, invoiceBarcode, irBarcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String goodsId, String irNum, File invoiceBarcode, File irBarcode)?
        addBarcode,
    required TResult orElse(),
  }) {
    if (addBarcode != null) {
      return addBarcode(goodsId, irNum, invoiceBarcode, irBarcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addBarcode value) addBarcode,
  }) {
    return addBarcode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addBarcode value)? addBarcode,
  }) {
    return addBarcode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addBarcode value)? addBarcode,
    required TResult orElse(),
  }) {
    if (addBarcode != null) {
      return addBarcode(this);
    }
    return orElse();
  }
}

abstract class addBarcode implements BarcodeEvent {
  const factory addBarcode(
      {required final String goodsId,
      required final String irNum,
      required final File invoiceBarcode,
      required final File irBarcode}) = _$addBarcode;

  @override
  String get goodsId;
  @override
  String get irNum;
  @override
  File get invoiceBarcode;
  @override
  File get irBarcode;
  @override
  @JsonKey(ignore: true)
  _$$addBarcodeCopyWith<_$addBarcode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BarcodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() barcodeInitial,
    required TResult Function(bool isAdded, bool isLoading) showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? barcodeInitial,
    TResult? Function(bool isAdded, bool isLoading)? showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? barcodeInitial,
    TResult Function(bool isAdded, bool isLoading)? showResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(barcodeInitial value) barcodeInitial,
    required TResult Function(showResult value) showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(barcodeInitial value)? barcodeInitial,
    TResult? Function(showResult value)? showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(barcodeInitial value)? barcodeInitial,
    TResult Function(showResult value)? showResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeStateCopyWith<$Res> {
  factory $BarcodeStateCopyWith(
          BarcodeState value, $Res Function(BarcodeState) then) =
      _$BarcodeStateCopyWithImpl<$Res, BarcodeState>;
}

/// @nodoc
class _$BarcodeStateCopyWithImpl<$Res, $Val extends BarcodeState>
    implements $BarcodeStateCopyWith<$Res> {
  _$BarcodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$barcodeInitialCopyWith<$Res> {
  factory _$$barcodeInitialCopyWith(
          _$barcodeInitial value, $Res Function(_$barcodeInitial) then) =
      __$$barcodeInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$barcodeInitialCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$barcodeInitial>
    implements _$$barcodeInitialCopyWith<$Res> {
  __$$barcodeInitialCopyWithImpl(
      _$barcodeInitial _value, $Res Function(_$barcodeInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$barcodeInitial implements barcodeInitial {
  const _$barcodeInitial();

  @override
  String toString() {
    return 'BarcodeState.barcodeInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$barcodeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() barcodeInitial,
    required TResult Function(bool isAdded, bool isLoading) showResult,
  }) {
    return barcodeInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? barcodeInitial,
    TResult? Function(bool isAdded, bool isLoading)? showResult,
  }) {
    return barcodeInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? barcodeInitial,
    TResult Function(bool isAdded, bool isLoading)? showResult,
    required TResult orElse(),
  }) {
    if (barcodeInitial != null) {
      return barcodeInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(barcodeInitial value) barcodeInitial,
    required TResult Function(showResult value) showResult,
  }) {
    return barcodeInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(barcodeInitial value)? barcodeInitial,
    TResult? Function(showResult value)? showResult,
  }) {
    return barcodeInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(barcodeInitial value)? barcodeInitial,
    TResult Function(showResult value)? showResult,
    required TResult orElse(),
  }) {
    if (barcodeInitial != null) {
      return barcodeInitial(this);
    }
    return orElse();
  }
}

abstract class barcodeInitial implements BarcodeState {
  const factory barcodeInitial() = _$barcodeInitial;
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
    extends _$BarcodeStateCopyWithImpl<$Res, _$showResult>
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
    return 'BarcodeState.showResult(isAdded: $isAdded, isLoading: $isLoading)';
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
    required TResult Function() barcodeInitial,
    required TResult Function(bool isAdded, bool isLoading) showResult,
  }) {
    return showResult(isAdded, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? barcodeInitial,
    TResult? Function(bool isAdded, bool isLoading)? showResult,
  }) {
    return showResult?.call(isAdded, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? barcodeInitial,
    TResult Function(bool isAdded, bool isLoading)? showResult,
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
    required TResult Function(barcodeInitial value) barcodeInitial,
    required TResult Function(showResult value) showResult,
  }) {
    return showResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(barcodeInitial value)? barcodeInitial,
    TResult? Function(showResult value)? showResult,
  }) {
    return showResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(barcodeInitial value)? barcodeInitial,
    TResult Function(showResult value)? showResult,
    required TResult orElse(),
  }) {
    if (showResult != null) {
      return showResult(this);
    }
    return orElse();
  }
}

abstract class showResult implements BarcodeState {
  const factory showResult(
      {required final bool isAdded,
      required final bool isLoading}) = _$showResult;

  bool get isAdded;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$$showResultCopyWith<_$showResult> get copyWith =>
      throw _privateConstructorUsedError;
}
