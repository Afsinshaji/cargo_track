part of 'barcode_bloc.dart';

@freezed
class BarcodeState with _$BarcodeState {
  const factory BarcodeState.barcodeInitial() = barcodeInitial;
  const factory BarcodeState.showResult(
      {required bool isAdded, required bool isLoading}) = showResult;
}
