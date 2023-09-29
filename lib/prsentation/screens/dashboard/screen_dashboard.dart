import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/strings/strings.dart';
import 'package:cargo_track/prsentation/screens/add_cargo/add_cargo.dart';
import 'package:cargo_track/prsentation/screens/dashboard/widgets/draggable_bottom_sheet.dart';
import 'package:cargo_track/prsentation/screens/track/screen_track.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login/widget/logo_image_box.dart';
import 'package:cargo_track/core/constants/constants.dart';

class DaashBoardScreen extends StatefulWidget {
  const DaashBoardScreen({super.key});

  @override
  State<DaashBoardScreen> createState() => _DaashBoardScreenState();
}

class _DaashBoardScreenState extends State<DaashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kBlueColor.withOpacity(0.7),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Row(
                children: [
                  LogoImageBox(
                      logoHeight: size.width * 0.5, logimage: ctsWhiteLogo),
                  LogoImageBox(
                    logoHeight: size.width * 0.5,
                    logimage: tagLineWhiteLogo,
                  )
                ],
              )),
              Align(
                alignment: Alignment.centerRight,
                child: Image.network(truckImage),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: kWhiteColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(200))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: kWhiteColor,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(200))),
                      child: Column(
                        children: [
                          kHeight20,
                          Container(
                            margin: EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: kBlackColor, blurRadius: 1)
                                ],
                                color: kWhiteColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(200),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                            child: Column(
                              children: [
                                kHeight30,
                                Text(
                                  'Track Your Cargo',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      letterSpacing: .5,
                                      fontSize: 18,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.85,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0, vertical: 10),
                                    child: Material(
                                      shadowColor: kBlackColor,
                                      elevation: 2,
                                      borderRadius: BorderRadius.circular(25),
                                      child: TextField(
                                        // controller: searchController,
                                        keyboardType: TextInputType.number,
                                        style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                            letterSpacing: .3,
                                            fontSize: 15,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        cursorColor: kBlackColor,
                                        cursorWidth: 1,
                                        cursorHeight: 20,
                                        decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    left: 40, right: 20),
                                            hintText: 'Invoice/Phone Number...',
                                            hintStyle: TextStyle(
                                              color:
                                                  kBlackColor.withOpacity(0.4),
                                            ),
                                            filled: true,
                                            fillColor: kWhiteColor,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                                ClickButton(
                                  onTap: () {
                                    openDraggableBottomSheet(
                                        context: context,
                                        child: const TrackScreen());
                                  },
                                  width: size.width * 0.4,
                                  text: 'Track',
                                  height: 35,
                                  changeColor: kWhiteColor,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.44,
                      width: size.width,
                    ),
                    const StatusCard()
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    );
  }
}
