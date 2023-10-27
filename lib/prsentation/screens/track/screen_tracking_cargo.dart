import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/domain/track/models/datum.dart';
import 'package:cargo_track/prsentation/screens/track/screen_track.dart';
import 'package:cargo_track/prsentation/widgets/circle_popup_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackingCargoScreen extends StatelessWidget {
  const TrackingCargoScreen({super.key, required this.cargoList, });
  final List<StatusData> cargoList;
  

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: size.height,
            decoration: const BoxDecoration(
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             
                kHeight20,
                Row(
                  children: [
                    const CirclePopUpButton(leftPadding: 10,iconSize: 25,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Cargo's",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            fontSize: 22,
                            color: kBlackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
                kHeight,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: List.generate(
                        cargoList.length,
                        (index) => InkWell(
                              onTap: () {
                                 Navigator.push(
                                              context,
                                              CupertinoPageRoute(
                                                builder: (context) =>
                                                  StatusWidget(size: size,
                                                  statusData: cargoList[index],
                                                  )  ,
                                              ));
                              },
                              child: Container(
                                padding:  EdgeInsets.all(size.height*0.025),
                                margin: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: kBlueColor,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: size.width*0.2,
                                      child: Text(
                                        cargoList[index].invoiceNumber ??= '',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            letterSpacing: .5,
                                            fontSize: 20,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    kWidth30,
                                    SizedBox(
                                      width: size.width*0.4,
                                      child: Text(
                                        cargoList[index].mobilenumber == null ||
                                                cargoList[index]
                                                    .mobilenumber!
                                                    .isEmpty ||
                                                cargoList[index].mobilenumber ==
                                                    'null'
                                            ? cargoList[index].cargoId!
                                            : cargoList[index].mobilenumber!,
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                            letterSpacing: .5,
                                            fontSize: 18,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
