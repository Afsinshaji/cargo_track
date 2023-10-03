import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cargo_track/domain/all_invoice/all_invoice/datum.dart';
import 'package:cargo_track/infrastructure/all_invoice/all_invoice_implementtion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_invoice_event.dart';
part 'all_invoice_state.dart';
part 'all_invoice_bloc.freezed.dart';

class AllInvoiceBloc extends Bloc<AllInvoiceEvent, AllInvoiceState> {
  AllInvoiceBloc() : super(const allInvoiceInitial()) {
    on<getAllInvoiceList>((event, emit) async {
      emit(const displayingAllInvoice(
        allInvoiceList: [],
        isError: false,
        isLoading: true,
      ));
      final result = await AllInvoiceImplementation.instance.getAllInvoice();
      log(result.toString());
      result.fold(
          (l) => emit(const displayingAllInvoice(
                allInvoiceList: [],
                isError: true,
                isLoading: false,
              )),
          (r) => emit(displayingAllInvoice(
                allInvoiceList: r,
                isError: false,
                isLoading: false,
              )));
    });
  }
}
