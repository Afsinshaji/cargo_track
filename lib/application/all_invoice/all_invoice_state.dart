part of 'all_invoice_bloc.dart';

@freezed
class AllInvoiceState with _$AllInvoiceState {
  const factory AllInvoiceState.allInvoiceInitial() = allInvoiceInitial;
  const factory AllInvoiceState.displayingAllInvoice({
    required bool isLoading,
    required bool isError,
    required List<InvoiceDatum> allInvoiceList,
  }) = displayingAllInvoice;
}
