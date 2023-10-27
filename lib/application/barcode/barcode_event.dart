part of 'barcode_bloc.dart';

@freezed
class BarcodeEvent with _$BarcodeEvent {
  const factory BarcodeEvent.addBarcode({
    required String goodsId,
    required String irNum,
    required File invoiceBarcode,
    required File irBarcode,
  }) = addBarcode;
}