import 'package:cargo_track/application/all_invoice/all_invoice_bloc.dart';
import 'package:cargo_track/application/all_trip_sheet/all_trip_sheet_bloc.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RefreshingFloatingButton extends StatelessWidget {
  const RefreshingFloatingButton({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.12,
      width: size.width * 0.12,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            blurRadius: 1,
            color: kBlackColor,
            spreadRadius: 0.01,
            offset: Offset(2, 2))
      ], color: kBlueColor, borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: IconButton(
          onPressed: () {
            BlocProvider.of<AllTripSheetBloc>(context)
        .add(const AllTripSheetEvent.getAllTripSheetList());
         BlocProvider.of<AllInvoiceBloc>(context)
        .add(const AllInvoiceEvent.getAllInvoiceList());
          },
          icon: const Icon(Icons.refresh),
          iconSize: size.width * 0.07,
          color: kBlackColor,
        ),
      ),
    );
  }
}
