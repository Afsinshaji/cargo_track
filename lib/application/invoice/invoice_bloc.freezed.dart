// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvoiceEvent {
  String get invoiceNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invoiceNumber) getInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invoiceNumber)? getInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invoiceNumber)? getInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getInvoice value) getInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getInvoice value)? getInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getInvoice value)? getInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceEventCopyWith<InvoiceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceEventCopyWith<$Res> {
  factory $InvoiceEventCopyWith(
          InvoiceEvent value, $Res Function(InvoiceEvent) then) =
      _$InvoiceEventCopyWithImpl<$Res, InvoiceEvent>;
  @useResult
  $Res call({String invoiceNumber});
}

/// @nodoc
class _$InvoiceEventCopyWithImpl<$Res, $Val extends InvoiceEvent>
    implements $InvoiceEventCopyWith<$Res> {
  _$InvoiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceNumber = null,
  }) {
    return _then(_value.copyWith(
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$getInvoiceCopyWith<$Res>
    implements $InvoiceEventCopyWith<$Res> {
  factory _$$getInvoiceCopyWith(
          _$getInvoice value, $Res Function(_$getInvoice) then) =
      __$$getInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String invoiceNumber});
}

/// @nodoc
class __$$getInvoiceCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$getInvoice>
    implements _$$getInvoiceCopyWith<$Res> {
  __$$getInvoiceCopyWithImpl(
      _$getInvoice _value, $Res Function(_$getInvoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceNumber = null,
  }) {
    return _then(_$getInvoice(
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getInvoice implements getInvoice {
  const _$getInvoice({required this.invoiceNumber});

  @override
  final String invoiceNumber;

  @override
  String toString() {
    return 'InvoiceEvent.getInvoice(invoiceNumber: $invoiceNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getInvoice &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoiceNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getInvoiceCopyWith<_$getInvoice> get copyWith =>
      __$$getInvoiceCopyWithImpl<_$getInvoice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invoiceNumber) getInvoice,
  }) {
    return getInvoice(invoiceNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invoiceNumber)? getInvoice,
  }) {
    return getInvoice?.call(invoiceNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invoiceNumber)? getInvoice,
    required TResult orElse(),
  }) {
    if (getInvoice != null) {
      return getInvoice(invoiceNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getInvoice value) getInvoice,
  }) {
    return getInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getInvoice value)? getInvoice,
  }) {
    return getInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getInvoice value)? getInvoice,
    required TResult orElse(),
  }) {
    if (getInvoice != null) {
      return getInvoice(this);
    }
    return orElse();
  }
}

abstract class getInvoice implements InvoiceEvent {
  const factory getInvoice({required final String invoiceNumber}) =
      _$getInvoice;

  @override
  String get invoiceNumber;
  @override
  @JsonKey(ignore: true)
  _$$getInvoiceCopyWith<_$getInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InvoiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invoiceInitial,
    required TResult Function(bool isLoading, bool isError, Invoice invoice)
        displayInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invoiceInitial,
    TResult? Function(bool isLoading, bool isError, Invoice invoice)?
        displayInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invoiceInitial,
    TResult Function(bool isLoading, bool isError, Invoice invoice)?
        displayInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(invoiceInitial value) invoiceInitial,
    required TResult Function(displayInvoice value) displayInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(invoiceInitial value)? invoiceInitial,
    TResult? Function(displayInvoice value)? displayInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(invoiceInitial value)? invoiceInitial,
    TResult Function(displayInvoice value)? displayInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceStateCopyWith<$Res> {
  factory $InvoiceStateCopyWith(
          InvoiceState value, $Res Function(InvoiceState) then) =
      _$InvoiceStateCopyWithImpl<$Res, InvoiceState>;
}

/// @nodoc
class _$InvoiceStateCopyWithImpl<$Res, $Val extends InvoiceState>
    implements $InvoiceStateCopyWith<$Res> {
  _$InvoiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$invoiceInitialCopyWith<$Res> {
  factory _$$invoiceInitialCopyWith(
          _$invoiceInitial value, $Res Function(_$invoiceInitial) then) =
      __$$invoiceInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$invoiceInitialCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$invoiceInitial>
    implements _$$invoiceInitialCopyWith<$Res> {
  __$$invoiceInitialCopyWithImpl(
      _$invoiceInitial _value, $Res Function(_$invoiceInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$invoiceInitial implements invoiceInitial {
  const _$invoiceInitial();

  @override
  String toString() {
    return 'InvoiceState.invoiceInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$invoiceInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invoiceInitial,
    required TResult Function(bool isLoading, bool isError, Invoice invoice)
        displayInvoice,
  }) {
    return invoiceInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invoiceInitial,
    TResult? Function(bool isLoading, bool isError, Invoice invoice)?
        displayInvoice,
  }) {
    return invoiceInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invoiceInitial,
    TResult Function(bool isLoading, bool isError, Invoice invoice)?
        displayInvoice,
    required TResult orElse(),
  }) {
    if (invoiceInitial != null) {
      return invoiceInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(invoiceInitial value) invoiceInitial,
    required TResult Function(displayInvoice value) displayInvoice,
  }) {
    return invoiceInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(invoiceInitial value)? invoiceInitial,
    TResult? Function(displayInvoice value)? displayInvoice,
  }) {
    return invoiceInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(invoiceInitial value)? invoiceInitial,
    TResult Function(displayInvoice value)? displayInvoice,
    required TResult orElse(),
  }) {
    if (invoiceInitial != null) {
      return invoiceInitial(this);
    }
    return orElse();
  }
}

abstract class invoiceInitial implements InvoiceState {
  const factory invoiceInitial() = _$invoiceInitial;
}

/// @nodoc
abstract class _$$displayInvoiceCopyWith<$Res> {
  factory _$$displayInvoiceCopyWith(
          _$displayInvoice value, $Res Function(_$displayInvoice) then) =
      __$$displayInvoiceCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, bool isError, Invoice invoice});
}

/// @nodoc
class __$$displayInvoiceCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$displayInvoice>
    implements _$$displayInvoiceCopyWith<$Res> {
  __$$displayInvoiceCopyWithImpl(
      _$displayInvoice _value, $Res Function(_$displayInvoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? invoice = null,
  }) {
    return _then(_$displayInvoice(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice,
    ));
  }
}

/// @nodoc

class _$displayInvoice implements displayInvoice {
  const _$displayInvoice(
      {required this.isLoading, required this.isError, required this.invoice});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final Invoice invoice;

  @override
  String toString() {
    return 'InvoiceState.displayInvoice(isLoading: $isLoading, isError: $isError, invoice: $invoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayInvoice &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.invoice, invoice) || other.invoice == invoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, invoice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayInvoiceCopyWith<_$displayInvoice> get copyWith =>
      __$$displayInvoiceCopyWithImpl<_$displayInvoice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invoiceInitial,
    required TResult Function(bool isLoading, bool isError, Invoice invoice)
        displayInvoice,
  }) {
    return displayInvoice(isLoading, isError, invoice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invoiceInitial,
    TResult? Function(bool isLoading, bool isError, Invoice invoice)?
        displayInvoice,
  }) {
    return displayInvoice?.call(isLoading, isError, invoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invoiceInitial,
    TResult Function(bool isLoading, bool isError, Invoice invoice)?
        displayInvoice,
    required TResult orElse(),
  }) {
    if (displayInvoice != null) {
      return displayInvoice(isLoading, isError, invoice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(invoiceInitial value) invoiceInitial,
    required TResult Function(displayInvoice value) displayInvoice,
  }) {
    return displayInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(invoiceInitial value)? invoiceInitial,
    TResult? Function(displayInvoice value)? displayInvoice,
  }) {
    return displayInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(invoiceInitial value)? invoiceInitial,
    TResult Function(displayInvoice value)? displayInvoice,
    required TResult orElse(),
  }) {
    if (displayInvoice != null) {
      return displayInvoice(this);
    }
    return orElse();
  }
}

abstract class displayInvoice implements InvoiceState {
  const factory displayInvoice(
      {required final bool isLoading,
      required final bool isError,
      required final Invoice invoice}) = _$displayInvoice;

  bool get isLoading;
  bool get isError;
  Invoice get invoice;
  @JsonKey(ignore: true)
  _$$displayInvoiceCopyWith<_$displayInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}
