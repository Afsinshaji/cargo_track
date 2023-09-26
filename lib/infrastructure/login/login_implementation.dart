import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:cargo_track/domain/login/login_service.dart';
import 'package:cargo_track/domain/login/models/login/login.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class LoginImplementation extends LoginService {
  final dio = Dio();

  // creating a singleton
  LoginImplementation.internal();
  static LoginImplementation instance = LoginImplementation.internal();
  LoginImplementation factory() {
    return instance;
  }

  //

  @override
  Future<Login> login(
      {required String userName, required String password}) async {
    const url = ApiEndPoints.login;
    log('hellooo');
    //using http
    final uri = Uri.parse(url);
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      'username': 'staffuser',
      'password': '7510685178',
    });

    final httpresponse = await http.post(uri, headers: headers, body: body);

    //

    // final response = await dio.post(url,
    //     data: {'username': userName, 'password': password},
    //     options: Options(headers: {
    //       'User-Agent': 'insomnia/2023.5.8',
    //       'Content-Type': 'application/json',
    //       'Content-Length': '53',
    //       'Accept': 'application/json',
    //     }));
    // if (response.statusCode == 401) {
    //   log('heiii');
    //   log(response.data.toString());
    // }
    if (httpresponse.statusCode == 401) {
      log('heiii');
      log(httpresponse.body.toString());
    }

    final responsebody = jsonDecode(httpresponse.body);
    final result = Login.fromJson(responsebody);

    return result;
  }
}


