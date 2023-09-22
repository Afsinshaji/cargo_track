import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/list/list.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBlueColor,
        ),
        backgroundColor: kBlueColor,
        body: SafeArea(
            child: Center(
                child: Card(
          color: kWhiteColor,
          shadowColor: kBlackColor,
          elevation: 3,
          child: Column(
              children: List.generate(
                  detailsList.length,
                 
                  (index) => Row(
                        children: [
                          Text(
                            detailsList[index],
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                letterSpacing: .5,
                                fontSize: 16,
                                color: kBlackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            dummyDetails[index],
                            maxLines: null,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                letterSpacing: .5,
                                fontSize: 16,
                                color: kBlackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ))),
        ))));
  }
}

//	SL NO	COMPANY	SHIP.NAME	INVOICE	PCS	WEIGHT	DISTRICT	RECIEVER ADDRESS	STATUS	SENDING DATE	RECCIEV.DATE	DESC. OF GOODS	ACTIONS
	//1	GSC COK	KOCHI - 21/09/2023	G236311	2	31.15	KANNUR	SHAJIMA AK , AK HOUSE , PUNCHAVYAL MOTTAMAL , KANNAPURAM , MOTTAMMAL PO , MOTTAMMAL S.O KANNUR , KERALA -670331 , MOB -9747440830 / 9562991525	Shipmnt Rcv		21/09/2023	House Hold Items	
