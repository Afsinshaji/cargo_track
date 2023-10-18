import 'package:cargo_track/application/reports/reports_bloc.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackingCargoScreen extends StatelessWidget {
  const TrackingCargoScreen({super.key, required this.reportList});
 final List<ReportsDTO> reportList;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            decoration: const BoxDecoration(
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.4),
                    child: const Divider(
                      color: kGreyColor,
                      thickness: 5,
                    ),
                  ),
                ),
                kHeight20,
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Cargo's",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 20,
                        color: kBlackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                kHeight30,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: List.generate(
                        reportList.length,
                        (index) => Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Text(
                                    reportList[index].invoiceNumber,
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        letterSpacing: .5,
                                        fontSize: 20,
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Text(
                                     reportList[index].mobilenumber,
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        letterSpacing: .5,
                                        fontSize: 20,
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
