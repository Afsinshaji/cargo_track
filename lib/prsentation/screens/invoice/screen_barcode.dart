
import 'dart:io';

import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/prsentation/widgets/circle_popup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BarcodeScreen extends StatelessWidget {
  const BarcodeScreen({super.key, required this.barcodeImage, required this.idBarcode});
  final File barcodeImage;
  final File? idBarcode;
  @override
  Widget build(BuildContext context) {
   
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBlueColor,
      appBar: AppBar(
        backgroundColor: kBlueColor,
        toolbarHeight: size.height * 0.12,
        leading: kWidth,
        leadingWidth: 10,
        title: Row(
          children: [
            const CirclePopUpButton(),
            kWidth30,
            Text(
              'Invoice Barcode',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  letterSpacing: .5,
                  fontSize: 24,
                  color: kWhiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
            
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: kWhiteColor, borderRadius: BorderRadius.circular(30)),
                child: SvgPicture.file(
                  barcodeImage,
                  width: size.height * 0.3,
                  height: size.height * 0.3,
                ),
              ),
        kHeight20,
           idBarcode!=null?     Column(
             children: [
              Text(
              'L.R. NO. Barcode',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  letterSpacing: .5,
                  fontSize: 24,
                  color: kWhiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            kHeight20,
               Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: kWhiteColor, borderRadius: BorderRadius.circular(30)),
                    child: SvgPicture.file(
                      idBarcode!,
                      width: size.height * 0.3,
                      height: size.height * 0.3,
                    ),
                  ),
             ],
           ):kHeight,
           kHeight20
            ],
          ),
        ),
      )),
    );
  }
}
