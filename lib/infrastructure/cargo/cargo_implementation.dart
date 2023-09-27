import 'dart:convert';
import 'dart:developer';

import 'package:cargo_track/domain/cargo/cargo_service.dart';
import 'package:cargo_track/domain/cargo/models/cargo/cargo.dart';
import 'package:cargo_track/domain/core/api_end_points.dart';
import 'package:http/http.dart' as http;

class CargoImplementation extends CargoService{
  // creating a singleton
  CargoImplementation.internal();
  static CargoImplementation instance = CargoImplementation.internal();
  CargoImplementation factory() {
    return instance;
  }

  //
  

  @override
  Future addCargo({required Cargo cargo}) async {
  
    const url = ApiEndPoints.addCargo;
    final uri = Uri.parse(url);
    final headers = {
      'User-Agent': 'insomnia/2023.5.8',
      'Cookie': 'ci_session=685c8fe6a747f1f576b014f93caefe4612a28838',
      'Authorization': 'Bearer n6vmW4LtLQYlrevCkZnTqlwVoKeLJ1O5',
      'Accept': '*/*',
      'Content-Type': 'application/json',
      'Content-Length': '53',
    };
     final body = jsonEncode({
 	"invoiceno":cargo.invoiceno,
	"id":cargo.id,
	"trip_sheet_id":cargo.tripSheetId,
 	"district": cargo.district,
 	"company": cargo.company,
 	"address":cargo.address,
 	"phone": cargo.phone,
	"weight": cargo.weight,
 	"pcs":cargo.pcs
});
    
    final httpResponse = await http.post(uri, headers: headers,body: body);

    if (httpResponse.statusCode == 401) {
      log(httpResponse.body.toString());
    }
    final responsebody = jsonDecode(httpResponse.body);
    
   final result = Cargo.fromJson(responsebody);
    log(result.toString());
    return result;
  }
  }
