import 'package:bloc/bloc.dart';
import 'package:cargo_track/domain/invoice/invoice/invoice.dart';

import 'package:cargo_track/infrastructure/invoice/invoice_implementation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_event.dart';
part 'invoice_state.dart';
part 'invoice_bloc.freezed.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  InvoiceBloc() : super(const invoiceInitial()) {
    on<getInvoice>((event, emit) async {
      emit(displayInvoice(
          isLoading: true, isError: false, invoice: Invoice.empty()));
      final result = await InvoiceImplementation.instance
          .getInvoice(invoicenumber: event.invoiceNumber);
      result.fold(
          (l) => emit(displayInvoice(
                invoice: Invoice.empty(),
                isError: true,
                isLoading: false,
              )),
          (r) => emit(displayInvoice(
                invoice: r,
                isError: false,
                isLoading: false,
              )));
    });
  }
}
