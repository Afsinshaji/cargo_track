import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter { contains, startWith, exact }

final reportsSearchProvider = StateProvider(
  (ref) {
    return ReportsSearchDTO(
        filter: 'Contains', invoice: '', vehicleNum: '', cargoName: '');
  },
);

final reportsSearchListlength = StateProvider(
  (ref) {
    return 1;
  },
);

final reportsFilterProvider = StateProvider(
  (ref) {
    return 'Contains';
  },
);
final reportsVehicleNumProvider = StateProvider(
  (ref) {
    return '';
  },
);
final reportsCargoProvider = StateProvider(
  (ref) {
    return '';
  },
);
final reportsInvoiceProvider = StateProvider(
  (ref) {
    return '';
  },
);
searchInReports(String filter, String invoice, String vehicleNum,
    String cargoName, WidgetRef ref) {
  log('search riverpod');
  ref.read(reportsSearchProvider.notifier).state = ReportsSearchDTO(
      filter: filter,
      invoice: invoice,
      vehicleNum: vehicleNum,
      cargoName: cargoName);
}

determineSearchListlength(int length, WidgetRef ref) {
  ref.read(reportsSearchListlength.notifier).state = length + 1;
}

addVehicleNum(String vehicleNum, WidgetRef ref) {
  log(vehicleNum);
  ref.read(reportsVehicleNumProvider.notifier).state = vehicleNum;
}

addCargoName(String cargo, WidgetRef ref) {
  log(cargo);
  ref.read(reportsCargoProvider.notifier).state = cargo;
}

addInvoiceNum(String invoice, WidgetRef ref) {
  log(invoice);
  ref.read(reportsInvoiceProvider.notifier).state = invoice;
}

selectFilter(String filter, WidgetRef ref) {
  log(filter.toString());
  switch (filter) {
    case 'Contains':
      ref.read(reportsFilterProvider.notifier).state = 'Contains';
      break;
    case 'Start With':
      ref.read(reportsFilterProvider.notifier).state = 'Start With';
      break;
    case 'Exact':
      ref.read(reportsFilterProvider.notifier).state = 'Exact';
      break;
    default:
      ref.read(reportsFilterProvider.notifier).state = 'Contains';
      break;
  }
}

class ReportsSearchDTO {
  final String filter;
  final String invoice;
  final String vehicleNum;
  final String cargoName;

  ReportsSearchDTO(
      {required this.filter,
      required this.invoice,
      required this.vehicleNum,
      required this.cargoName});
}
