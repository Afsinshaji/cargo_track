import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cargo_track/infrastructure/barcode/barcode_implementation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'barcode_event.dart';
part 'barcode_state.dart';
part 'barcode_bloc.freezed.dart';

class BarcodeBloc extends Bloc<BarcodeEvent, BarcodeState> {
  BarcodeBloc() : super(const barcodeInitial()) {
    on<addBarcode>((event, emit) async {
      emit(const showResult(isAdded: false, isLoading: true));
      final result = await BarcodeImplementation.instance.addBarcode(
          goodsId: event.goodsId,
          irNum: event.irNum,
          invoiceBarcode: event.invoiceBarcode,
          irBarcode: event.irBarcode);

      result.fold(
          (l) => emit(const showResult(isAdded: false, isLoading: false)),
          (r) => emit(const showResult(isAdded: true, isLoading: false)));
    });
  }
}
