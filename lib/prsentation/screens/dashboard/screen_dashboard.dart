import 'package:cargo_track/application/reports/reports_bloc.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/prsentation/screens/dashboard/widgets/draggable_bottom_sheet.dart';
import 'package:cargo_track/prsentation/screens/track/screen_track.dart';
import 'package:cargo_track/prsentation/widgets/four_rotating_drop.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cargo_track/core/constants/constants.dart';

class DaashBoardScreen extends StatefulWidget {
  const DaashBoardScreen({super.key});

  @override
  State<DaashBoardScreen> createState() => _DaashBoardScreenState();
}

class _DaashBoardScreenState extends State<DaashBoardScreen> {
  final TextEditingController statusTextController = TextEditingController();
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
                  // LogoImageBox(
                  //     logoHeight: size.width * 0.5, logimage: ctsWhiteLogo),
                  SizedBox(
                    height: size.width * 0.5,
                    child: Image.asset('assets/images/Untitled-design.jpg'),
                  ),
                  // LogoImageBox(
                  //   logoHeight: size.width * 0.5,
                  //   logimage: tagLineWhiteLogo,
                  // )
                  SizedBox(
                    height: size.width * 0.5,
                    child: Image.asset('assets/images/Untitled-design-1.jpg'),
                  )
                ],
              )),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                    'assets/images/Truck-Transparent-Images-PNG.png'),
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
                      height: size.height * 0.38,
                      width: size.width,
                      decoration: const BoxDecoration(
                          color: kWhiteColor,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(200))),
                      child: Column(
                        children: [
                          kHeight20,
                          Container(
                            margin: const EdgeInsets.all(8),
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
                                        controller: statusTextController,
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
                                BlocBuilder<ReportsBloc, ReportsState>(
                                  builder: (context, state) {
                                    List<ReportsDTO> allReportsList = [];
                                    if (state is displayingReports) {
                                      if (state.isLoading) {
                                        return const FourRotatingDots(
                                            color: kBlackColor, size: 60);
                                      }
                                      allReportsList = state.allReportsList;
                                    }
                                    return ClickButton(
                                      onTap: () {
                                        List<ReportsDTO> neededInvoiceList =
                                            allReportsList
                                                .where((element) =>
                                                    element.invoiceNumber ==
                                                    statusTextController.text)
                                                .toList();
                                        List<ReportsDTO> neededPhoneNumberList =
                                            allReportsList
                                                .where((element) =>
                                                    element.mobilenumber ==
                                                    statusTextController.text)
                                                .toList();
                                        allReportsList=[];
                                        allReportsList.addAll(neededInvoiceList);
                                        allReportsList.addAll(neededPhoneNumberList);

                                        openDraggableBottomSheet(
                                            context: context,
                                            child:
                                            //allReportsList.length==1?
                                             const TrackScreen()
                                             
                                            //  :TrackingCargoScreen(
                                            //   reportList: allReportsList,
                                            //  )
                                             
                                             );
                                      },
                                      width: size.width * 0.4,
                                      text: 'Track',
                                      height: 35,
                                      changeColor: kWhiteColor,
                                    );
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: size.height * 0.1,
                    //   width: size.width,
                    // ),
                    // const StatusCard()
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
