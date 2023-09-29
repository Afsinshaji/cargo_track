import 'package:cargo_track/domain/invoice/models/invoice.dart';
import 'package:cargo_track/infrastructure/invoice/invoice_implementation.dart';

class InvoiceApplication {
  Future<Invoice> getInvoice(String invoicenumber) async {
    final result = await InvoiceImplementation.instance
        .getInvoice(invoicenumber: invoicenumber);

    return result;
  }
}
