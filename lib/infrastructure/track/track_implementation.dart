import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/track/models/datum.dart';
import 'package:cargo_track/domain/track/models/tracking_status.dart';
import 'package:cargo_track/domain/track/track_service.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class TrackImplementation extends TrackService{
   // creating a singleton
  TrackImplementation.internal();
  static TrackImplementation instance = TrackImplementation.internal();
  TrackImplementation factory() {
    return instance;
  }

  //
  @override
  Future<Either<MainFailure, List<StatusData>>> getTrackingStatus({required String searchingNumber})async {
    try {
      final url = '${ApiEndPoints.getTrackingStatus}$searchingNumber';
      String? token = await StorageService.instance.readSecureData('authToken');
      token ??= '';
      final uri = Uri.parse(url);
      final headers = {
        'Authorization': 'Bearer $token',
        
      };
      final httpResponse = await http.post(uri, headers: headers);
      if (httpResponse.statusCode == 200 || httpResponse.statusCode == 201) {
        log(httpResponse.body.toString());

        log(httpResponse.body.toString());
        final responsebody = jsonDecode(httpResponse.body);

        final trackResult = TrackingStatus.fromJson(responsebody);

        final List<StatusData> result = [];
        if (trackResult.data != null) {
          for (int i = 0; i < trackResult.data!.length; i++) {
            result.add(trackResult.data![i]);
          }
        }
        log(result.toString());

        return right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
  
}