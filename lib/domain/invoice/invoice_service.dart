import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/invoice/invoice/invoice.dart';

import 'package:dartz/dartz.dart';

abstract class InvoiceService {
  Future<Either<MainFailure, Invoice?>> getInvoice(
      {required String invoicenumber});
}
