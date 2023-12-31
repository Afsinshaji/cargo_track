import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/core/failure/failure.dart';
import 'package:cargo_track/domain/login/login_service.dart';
import 'package:cargo_track/domain/login/models/login/login.dart';
import 'package:dartz/dartz.dart';


import 'package:http/http.dart' as http;

class LoginImplementation extends LoginService {
 

  // creating a singleton
  LoginImplementation.internal();
  static LoginImplementation instance = LoginImplementation.internal();
  LoginImplementation factory() {
    return instance;
  }

  //

  @override
  Future<Either<MainFailure, Login>> login(
      {required String userName, required String password}) async {
    try {
      const url = ApiEndPoints.login;
      log('hellooo');
      //using http
      final uri = Uri.parse(url);
      final headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

      final body = jsonEncode({
        'username': userName,
        'password': password,
      });

      final httpresponse = await http.post(uri, headers: headers, body: body);

      //

      // final response = await dio.post(url,
      //     data: {'username': userName, 'password': password},
      //     options: Options(headers: {
      //       'User-Agent': 'insomnia/2023.5.8',
      // 'Content-Type': 'application/json',
      // 'Content-Length': '53',
      //       'Accept': 'application/json',
      //     }));
      // if (response.statusCode == 401) {
      //   log('heiii');
      //   log(response.data.toString());
      // }

      if (httpresponse.statusCode == 200 || httpresponse.statusCode == 201) {
        log(httpresponse.body.toString());

        final responsebody = jsonDecode(httpresponse.body);
        final result = Login.fromJson(responsebody);
        log(result.success.toString());
        log("$userName$password");
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
