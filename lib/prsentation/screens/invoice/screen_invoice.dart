import 'dart:io';
import 'package:cargo_track/prsentation/widgets/circle_popup_button.dart';
import 'package:path_provider/path_provider.dart';

import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/core/list/list.dart';
import 'package:cargo_track/core/strings/strings.dart';
import 'package:cargo_track/prsentation/screens/invoice/screen_barcode.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/re_weight_text_field.dart';
import 'package:barcode/barcode.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  final TextEditingController reWeightController = TextEditingController();
  bool generateBarcodeButton = false;
  List details = detailsList;
  List dummy = dummyDetails;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
            DetailsCard(details: details, dummy: dummy),
            RcieverAddressCard(),
            reWeightController.text.isNotEmpty ? kHeight100 : kHeight,
            kHeight50,
            kHeight30,
          ],
        ),
      )),
      floatingActionButton: Padding(
        padding: reWeightController.text.isEmpty
            ? EdgeInsets.only(
                top: size.height - 70,
                left: size.width * 0.1,
                right: generateBarcodeButton == true ? size.width * 0.2 : 0)
            : EdgeInsets.only(top: size.height - 150, left: size.width * 0.1),
        child: Column(
          children: [
            generateBarcodeButton == false
                ? ReWeightTextField(
                    controller: reWeightController,
                    icon: Icons.monitor_weight,
                    text: 'Add Re-Weight',
                    onEditingComplete: () {
                      setState(() {});
                    },
                  )
                : ClickButton(
                    onTap: () async {
                      await generateBarcode(dummy[3])
                          .then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BarcodeScreen(barcodeImage: value),
                              )));
                    },
                    text: 'Generate Barcode',
                    width: size.width * 0.5,
                    backGroundColor: kBlackColor,
                    changeColor: kBlackColor.withOpacity(0.3),
                  ),
            reWeightController.text.isNotEmpty
                ? ClickButton(
                    onTap: () {
                      setState(() {
                        details.add('RE-WEIGHT');
                        dummy.add(reWeightController.text);
                        generateBarcodeButton = true;
                        reWeightController.clear();
                      });
                    },
                    backGroundColor: kBlackColor,
                    changeColor: kBlackColor.withOpacity(0.3),
                    text: 'Save',
                    width: size.width * 0.5,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class RcieverAddressCard extends StatelessWidget {
  RcieverAddressCard({
    super.key,
  });

  final List<String> textList = recieverAddress.split(',');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: kWhiteColor,
        shadowColor: kBlackColor,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                'RECIEVER ADDRESS',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    letterSpacing: .5,
                    fontSize: 18,
                    color: kBlackColor.withOpacity(0.6),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Divider(color: kBlackColor.withOpacity(0.6), height: 10),
              kHeight,
              Column(
                children: List.generate(
                  textList.length,
                  (index) => index == textList.length - 1
                      ? DetailsText(
                          dummy: textList[index],
                          fontSize: 16,
                        )
                      : DetailsText(
                          dummy: '${textList[index]},',
                          fontSize: 16,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
    required this.details,
    required this.dummy,
  });

  final List details;
  final List dummy;

  @override
  Widget build(BuildContext context) {
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
              children: List.generate(
                  detailsList.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FieldText(details: details[index]),
                            DetailsText(dummy: dummy[index]),
                          ],
                        ),
                      ))),
        ),
      ),
    );
  }
}

class DetailsText extends StatelessWidget {
  const DetailsText({
    super.key,
    required this.dummy,
    this.fontSize = 16,
  });

  final String dummy;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      dummy,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          letterSpacing: .5,
          fontSize: fontSize,
          color: kBlackColor,
          fontWeight: FontWeight.w600,
          // overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class FieldText extends StatelessWidget {
  const FieldText({
    super.key,
    required this.details,
  });

  final String details;

  @override
  Widget build(BuildContext context) {
    return Text(
      details,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          letterSpacing: .5,
          fontSize: 16,
          color: kBlackColor.withOpacity(0.6),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

// Future<File> generateBarcode(String data) async {
//   final barcode = Barcode.code93();
//   final svg = barcode.toSvg(data, width: 200, height: 200);
//   final fileName = barcode.name.replaceAll(RegExp(r'\s'), '-').toLowerCase();
//   final image = await File('$fileName.svg').writeAsString(svg);
//   log(image.toString());
//   return image;
// }

Future<File> generateBarcode(String data) async {
  final barcode = Barcode.code93();
  final svg = barcode.toSvg(data, width: 200, height: 200);
  final fileName = barcode.name.replaceAll(RegExp(r'\s'), '-').toLowerCase();

  // Get the document directory where you want to save the file
  final directory = await getApplicationDocumentsDirectory();
  final filePath = '${directory.path}/$fileName.svg';

  final file = File(filePath);
  await file.writeAsString(svg);

  // Log the file path
  print(filePath);

  return file;
}
