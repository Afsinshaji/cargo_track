import 'package:cargo_track/core/strings/strings.dart';

class ApiEndPoints {
  static const login = '$kBaseUrl/api/v1/login';

  static const getInvoice = '$kBaseUrl/api/v1/goods_details/';
  static const getAllTripSheet = '$kBaseUrl/api/v1/trip_sheet';
  static const getAllInvoice = '$kBaseUrl/api/v1/invoices';
  static const getAllVehicle = '$kBaseUrl/api/v1/vehicles';
  static const getAllCargoName = '$kBaseUrl/api/v1/cargos';
  static const getAllReports = '$kBaseUrl/api/v1/getReport';
  static const tripSheet = '$kBaseUrl/api/v1/trip_sheet/cargo/';
  static const addCargo = '$kBaseUrl/api/v1/trip_sheet/cargo';
  static const addReweight = '$kBaseUrl/api/v1/update/reweight';
}

//'$kBaseUrl/discover/movie?api_key=$apiKey&page={pagenumber}';
