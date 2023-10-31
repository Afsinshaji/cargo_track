

import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BarcodeService {
  Future<Either<MainFailure, bool>> addBarcode({
    required String goodsId,
    required String irNum,
    required String invoiceNumber,
   
  });
}
