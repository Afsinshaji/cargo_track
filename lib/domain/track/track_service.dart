import 'package:cargo_track/domain/core/failure/failure.dart';


import 'package:cargo_track/domain/track/models/datum.dart';

import 'package:dartz/dartz.dart';

abstract class TrackService {
  Future<Either<MainFailure, List<StatusData>>> getTrackingStatus({required String searchingNumber});

}
