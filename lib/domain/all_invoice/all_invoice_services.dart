import 'package:cargo_track/domain/all_invoice/all_invoice/datum.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AllInvoiceService {
  Future<Either<MainFailure, List<InvoiceDatum>>> getAllInvoice();
}
