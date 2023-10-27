import 'dart:io';

import 'package:cargo_track/application/barcode/barcode_bloc.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/prsentation/screens/invoice/screen_printing.dart';
import 'package:cargo_track/prsentation/widgets/circle_popup_button.dart';
import 'package:cargo_track/prsentation/widgets/four_rotating_drop.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:pdf/widgets.dart' as pw;

class BarcodeScreen extends StatelessWidget {
  const BarcodeScreen(
      {super.key,
      required this.barcodeImage,
      required this.idBarcode,
      required this.irNum,
      required this.goodsId});
  final File barcodeImage;
  final File idBarcode;
  final String irNum;
  final String goodsId;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBlueColor,
      floatingActionButton: BlocBuilder<BarcodeBloc, BarcodeState>(
        builder: (context, state) {
          if(state is showResult){
            if(state.isLoading){
                   return const Center(
                    child: FourRotatingDots(
                      color: kBlackColor,
                      size: 100,
                    ),
                  );
            }
            if(state.isAdded){
            if(state.isAdded){
                  Fluttertoast.showToast(
                    
                    gravity: ToastGravity.CENTER,
                    msg: 'Barcode Uploaded  ✅',
                    toastLength: Toast.LENGTH_LONG,
                    backgroundColor: Colors.green,
                    textColor: kWhiteColor,
                    fontSize: 22,
                  );
              }
            }
          }
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: size.width * 0.2,),
            child: ClickButton(
              onTap: () async {
                BlocProvider.of<BarcodeBloc>(context).add(BarcodeEvent.addBarcode(
                    goodsId: goodsId,
                    irNum: irNum,
                    invoiceBarcode: barcodeImage,
                    irBarcode: idBarcode));
              },
              text: 'Upload Barcode',
              width: size.width * 0.5,
              backGroundColor: kBlackColor,
              changeColor: kBlackColor.withOpacity(0.3),
            ),
          );
        },
      ),
      appBar: AppBar(
        backgroundColor: kBlueColor,
        toolbarHeight: size.height * 0.12,
        leading: kWidth,
        leadingWidth: 10,
        title: Row(
          children: [
            const CirclePopUpButton(),
            SizedBox(width: size.width*0.05,),
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
              SizedBox(width: size.width*0.01,),
            IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) =>
                //       //  PrintingScreen(
                //       //   barcodeImage: barcodeImage,
                //       //   idBarcode: idBarcode,
                //       // ),
                //     ));
              },
              icon: const Icon(
                Icons.print,
                color: kBlackColor,
                size: 35,
              ),
            )
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
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(30)),
                child: SvgPicture.file(
                  barcodeImage,
                  width: size.height * 0.3,
                  height: size.height * 0.3,
                ),
              ),
              kHeight20,
              Column(
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
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: SvgPicture.file(
                      idBarcode,
                      width: size.height * 0.3,
                      height: size.height * 0.3,
                    ),
                  ),
                ],
              ),
              kHeight50,
              kHeight40
            ],
          ),
        ),
      )),
    );
  }
}

// Future<File> convertSvgToPdf(String svgPath) async {
//   final pdf = pw.Document();

//   final svgContent = await File(svgPath).readAsString();

//   pdf.addPage(pw.Page(
//     build: (pw.Context context) {
//       return pw.SvgImage(svg: svgContent);
//     },
//   ));

//   final pdfFile = await getTemporaryPdfFile();

//   await pdfFile.writeAsBytes(await pdf.save());

//   return pdfFile;
// }

// Future<File> getTemporaryPdfFile() async {
//   final tempDir = await getTemporaryDirectory();
//   final tempPath = tempDir.path;
//   return File('$tempPath/output.pdf');
// }
