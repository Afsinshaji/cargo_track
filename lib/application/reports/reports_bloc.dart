import 'package:bloc/bloc.dart';

import 'package:cargo_track/domain/reports/all_cargo_name/datum.dart';
import 'package:cargo_track/domain/reports/all_reports/all_reports/datum.dart';

import 'package:cargo_track/domain/reports/all_vehicle/datum.dart';
import 'package:cargo_track/infrastructure/reports/reports_implementation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reports_event.dart';
part 'reports_state.dart';
part 'reports_bloc.freezed.dart';

class ReportsBloc extends Bloc<ReportsEvent, ReportsState> {
  ReportsBloc() : super(const reportsInitial()) {
    on<getAllReports>((event, emit) async {
      emit(const displayingReports(
        allCargoNameList: [],
        allVehicleList: [],
        allReportsList: [],
        isError: false,
        isLoading: true,
      ));
      List<AllReportsData>? allReportsData;
      List<ReportsDTO> allReportsList = [];
      List<AllCargoData> allcargoData = [];
      final List<String> allCargoList = [];
      List<AllVehicleData> allvehicleData = [];
      final List<String> allVehicleList = [];
      final allCargoResult =
          await ReportsImplementation.instance.getAllCargoName();
      final allVehicleResult =
          await ReportsImplementation.instance.getAllVehicle();
      final allReportsResult =
          await ReportsImplementation.instance.getAllReports();
      allcargoData = allCargoResult.fold((l) => [], (r) => r);
      allvehicleData = allVehicleResult.fold((l) => [], (r) => r);
      allReportsData = allReportsResult.fold((l) => null, (r) => r);

      if (allReportsData != null) {
        if (allcargoData.isNotEmpty) {
          for (var data in allcargoData) {
            if (data.cargoName != null && data.cargoName!.isNotEmpty) {
              allCargoList.add(data.cargoName!);
            }
          }
        }
        if (allvehicleData.isNotEmpty) {
          for (var data in allvehicleData) {
            if (data.vehicleNumber != null && data.vehicleNumber!.isNotEmpty) {
              allVehicleList.add(data.vehicleNumber!);
            }
          }
        }
        if (allReportsData.isNotEmpty) {
          for (var data in allReportsData) {
            allReportsList.add(ReportsDTO(
                id: data.id ??= -1,
                tripSheetId: data.tripSheetId ??= -1,
                invoiceNumber: data.invoiceNumber ??= '',
                cargoId: data.cargoId ??= '',
                cargoName: data.cargoName ??= '',
                place: data.place ??= '',
                mobilenumber: data.mobilenumber ??= '',
                quantity: data.quantity ??= -1,
                weight: data.weight ??= '',
                status: data.status ??= -1,
                goodsId: data.goodsId ??= '',
                vehicleNumber: data.vehicleNumber ??= '',
                driverName: data.driverName ??= ''));
          }
        }

        emit(displayingReports(
            isLoading: false,
            isError: false,
            allReportsList: allReportsList,
            allCargoNameList: allCargoList,
            allVehicleList: allVehicleList));
      } else {
        emit(const displayingReports(
            allReportsList: [],
            isLoading: false,
            isError: true,
            allCargoNameList: [],
            allVehicleList: []));
      }
    });
  }
}

class ReportsDTO {
  final int id;

  final int tripSheetId;

  final String invoiceNumber;
  final String cargoId;
  final String cargoName;
  final String place;
  final String mobilenumber;
  final int quantity;
  final String weight;
  final int status;

  final dynamic goodsId;

  final String vehicleNumber;

  final String driverName;

  ReportsDTO(
      {required this.id,
      required this.tripSheetId,
      required this.invoiceNumber,
      required this.cargoId,
      required this.cargoName,
      required this.place,
      required this.mobilenumber,
      required this.quantity,
      required this.weight,
      required this.status,
      required this.goodsId,
      required this.vehicleNumber,
      required this.driverName});
  List<String> toList() {
    String realStatus = '';

    switch (status) {
      case 0:
        realStatus = 'On the Way';
        break;
      case 1:
        realStatus = 'Out for Delivery';
        break;
      case 2:
        realStatus = 'In Transit';
        break;
      case 3:
        realStatus = 'Delivered';
        break;
      case 4:
        realStatus = 'Pending';
        break;
      case 5:
        realStatus = 'Not Delivered';
        break;
    }

    return [
      id.toString(),
      tripSheetId.toString(),
      invoiceNumber,
      cargoId,
      cargoName,
      place,
      mobilenumber,
      quantity.toString(),
      weight,
      realStatus,
      goodsId,
      vehicleNumber,
      driverName
    ];
  }
}
