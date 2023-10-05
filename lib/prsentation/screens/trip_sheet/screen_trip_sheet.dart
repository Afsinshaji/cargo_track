import 'package:cargo_track/application/trip_sheet/trip_sheet_bloc.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/domain/trip_sheet/trip_sheet/datum.dart';
import 'package:cargo_track/prsentation/screens/scanner/screen_scanner.dart';

import 'package:cargo_track/prsentation/screens/trip_sheet/screen_cargo.dart';
import 'package:cargo_track/prsentation/screens/trip_sheet/widgets/scanner_button.dart';
import 'package:cargo_track/prsentation/widgets/circle_popup_button.dart';
import 'package:cargo_track/prsentation/widgets/empty_box.dart';
import 'package:cargo_track/prsentation/widgets/error_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TripSheetScreen extends StatelessWidget {
  const TripSheetScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<TripSheetDatum> tripSheetList = [];
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(child: SingleChildScrollView(
        child: BlocBuilder<TripSheetBloc, TripSheetState>(
          builder: (context, state) {
            if (state is displayTripSheet) {
              if (state.isLoading) {
                return Padding(
                  padding: EdgeInsets.only(top: size.height * 0.4),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (state.isError) {
                return Padding(
                  padding: EdgeInsets.only(top: size.height * 0.2),
                  child: const ErrorBox(),
                );
              }
              tripSheetList = state.cargoList;
            }
            if (tripSheetList.isEmpty) {
              return const EmptyBox();
            }
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: CirclePopUpButton(
                            iconSize: 25,
                            leftPadding: 3,
                          )),
                      kHeight,

                      ///${ tripSheetList[0].tripSheetId}
                      Column(
                        children: [
                          Text(
                            "Cargo List of TripSheet",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                letterSpacing: .5,
                                fontSize: 24,
                                color: kWhiteColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Text(
                            'Id-${tripSheetList[0].tripSheetId.toString()}',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                letterSpacing: .5,
                                fontSize: 28,
                                color: kWhiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: Column(
                      children: List.generate(
                    tripSheetList.length,
                    (index) => TripSheetCardItem(
                      size: size,
                      text: tripSheetList[index].cargoName ??= '',
                      tripSheet: tripSheetList[index],
                    ),
                  )),
                ),
              ],
            );
          },
        ),
      )),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
        child: ScannerButton(
          onTap: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => BarcodeScannerScreen(
                      isFromTripSheet: true,
                      tripSheetId: tripSheetList[0].tripSheetId.toString()),
                ));
          },
          text: 'SCAN',
          width: size.width * 0.4,
          backGroundColor: kBlackColor,
          changeColor: kBlackColor.withOpacity(0.3),
        ),
      ),
    );
  }
}

class TripSheetCardItem extends StatelessWidget {
  const TripSheetCardItem({
    super.key,
    required this.size,
    required this.text,
    required this.tripSheet,
  });

  final Size size;
  final String text;
  final TripSheetDatum tripSheet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => CargoScreen(tripSheet: tripSheet),
              ));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          shadowColor: kBlackColor,
          elevation: 2,
          child: SizedBox(
            width: size.width * 0.8,
            height: size.height * 0.1,
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
