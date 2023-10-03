part of 'invoice_bloc.dart';

@freezed
class InvoiceEvent with _$InvoiceEvent {
  const factory InvoiceEvent.getInvoice({required String invoiceNumber}) =
      getInvoice;
}
