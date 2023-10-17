import 'package:bloc/bloc.dart';

import 'package:cargo_track/domain/reports/all_cargo_name/datum.dart';

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
        isError: false,
        isLoading: true,
      ));
      List<AllCargoData> allcargoData = [];
      final List<String> allCargoList = [];
      List<AllVehicleData> allvehicleData = [];
      final List<String> allVehicleList = [];
      final allCargoResult =
          await ReportsImplementation.instance.getAllCargoName();
      final allVehicleResult =
          await ReportsImplementation.instance.getAllVehicle();
      allcargoData = allCargoResult.fold((l) => [], (r) => r);
      allvehicleData = allVehicleResult.fold((l) => [], (r) => r);
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

      emit(displayingReports(
          isLoading: false,
          isError: false,
          allCargoNameList: allCargoList,
          allVehicleList: allVehicleList));
    });
  }
}
