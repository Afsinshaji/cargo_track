import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/list/list.dart';
import 'package:cargo_track/domain/trip_sheet/trip_sheet/datum.dart';

import 'package:cargo_track/prsentation/screens/invoice/screen_invoice.dart';
import 'package:flutter/material.dart';

import '../../widgets/circle_popup_button.dart';

class CargoScreen extends StatelessWidget {
  const CargoScreen({super.key, required this.tripSheet});
  final TripSheetDatum tripSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CirclePopUpButton(),
              ),
            ),
            TripSheetDetailsCard(
              tripSheet: tripSheet,
            ),
          ],
        ),
      )),
    );
  }
}

class TripSheetDetailsCard extends StatelessWidget {
  const TripSheetDetailsCard({
    super.key,
    required this.tripSheet,
  });

  final TripSheetDatum tripSheet;

  @override
  Widget build(BuildContext context) {
    final detailsList = tripSheet.toListed();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: kWhiteColor,
        shadowColor: kBlackColor,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: List.generate(tripSheetDetails.length, (index) {
            if (detailsList[index] == null || detailsList[index] == 'null') {
              detailsList[index] = '';
            }
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FieldText(details: tripSheetDetails[index]),
                  DetailsText(dummy: detailsList[index] ??= ''),
                ],
              ),
            );
          })),
        ),
      ),
    );
  }
}
