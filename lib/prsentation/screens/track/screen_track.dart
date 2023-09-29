import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/prsentation/screens/track/widgets/left_status_column.dart';
import 'package:cargo_track/prsentation/screens/track/widgets/track_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/right_status_column.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.4),
                    child: Divider(
                      color: kGreyColor,
                      thickness: 5,
                    ),
                  ),
                ),
                kHeight20,
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Cargo Status',
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
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const LeftStatusColumn(),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.025),
                        child: const TrackIndicator(
                            status: Status.recievedatCalicut),
                      ),
                      const RightStatusColumn()
                    ],
                  ),
                ),
                kHeight100,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
