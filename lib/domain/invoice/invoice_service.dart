import 'package:cargo_track/domain/invoice/models/invoice.dart';

abstract class InvoiceService {
  Future<Invoice?>  getInvoice({required String invoicenumber});
}
