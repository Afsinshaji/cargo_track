import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/re_weight/re_weight_service.dart';
import 'package:cargo_track/domain/status/status/status.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class ReWeightImplementation extends ReWeightService {
  // creating a singleton
  ReWeightImplementation.internal();
  static ReWeightImplementation instance = ReWeightImplementation.internal();
  ReWeightImplementation factory() {
    return instance;
  }

  //

  @override
  Future<Either<MainFailure, Status>> addReWeight(
      {required String reWeight, required String goodsId}) async {
   try {const url = ApiEndPoints.addReweight;
    String? token = await StorageService.instance.readSecureData('authToken');
    token ??= '';
    final uri = Uri.parse(url);
    final headers = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    log(num.parse(reWeight).toString());
    final body =
        jsonEncode({"goods_id": goodsId, "rewight": num.parse(reWeight)});

    final httpResponse = await http.post(uri, headers: headers, body: body);
  if (httpResponse.statusCode == 200 || httpResponse.statusCode == 201){  final responsebody = jsonDecode(httpResponse.body);

    final result = Status.fromJson(responsebody);
    log(result.toString());

    return Right(result);}else {
        return const Left(MainFailure.serverFailure());
      }
    
    }catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
