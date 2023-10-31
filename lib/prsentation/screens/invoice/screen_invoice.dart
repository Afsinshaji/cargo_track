import 'dart:async';
import 'dart:io';
import 'package:cargo_track/application/riverpod/invoice/invoice_screen.dart';
import 'package:cargo_track/prsentation/widgets/empty_box.dart';
import 'package:cargo_track/prsentation/widgets/error_box.dart';
import 'package:cargo_track/prsentation/widgets/four_rotating_drop.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cargo_track/application/cargo/cargo_bloc.dart';
import 'package:cargo_track/application/invoice/invoice_bloc.dart';
import 'package:cargo_track/application/re_weight/re_weight_bloc.dart';
import 'package:cargo_track/application/trip_sheet/trip_sheet_bloc.dart';
import 'package:cargo_track/domain/cargo/models/cargo/cargo.dart';
import 'package:cargo_track/domain/invoice/invoice/invoice.dart';

import 'package:cargo_track/prsentation/widgets/circle_popup_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';

import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/core/list/list.dart';
import 'package:cargo_track/prsentation/screens/invoice/screen_barcode.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/re_weight_text_field.dart';
import 'package:barcode/barcode.dart';

class InvoiceScreen extends ConsumerStatefulWidget {
  const InvoiceScreen(
      {super.key, this.isFromTripSheet = false, this.tripSheetId = ''});

  final bool isFromTripSheet;
  final String tripSheetId;
  static Completer<void> reWeightCompleter = Completer<void>();
  @override
  InvoiceScreenState createState() => InvoiceScreenState();
}

class InvoiceScreenState extends ConsumerState<InvoiceScreen> {
  final TextEditingController reWeightController = TextEditingController();
 late double reWeightValue;
  // bool generateBarcodeButton = false;
  List details = detailsList;
  List dummy = dummyDetails;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    Invoice invoice = Invoice.empty();

    Invoice buttonInvoice = Invoice.empty();
    List fieldList = [];
    String recieverAddress = '';
    String goodsId = '';
    String invoiceno = '';
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(child: SingleChildScrollView(child:
              // BlocBuilder<ReWeightBloc, ReWeightState>(
              //   builder: (context, state) {
              //     return
              BlocBuilder<InvoiceBloc, InvoiceState>(
        builder: (context, state) {
          if (state is displayInvoice) {
            if (state.isLoading) {
              return Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.4,
                    ),
                    const FourRotatingDots(
                      color: kBlackColor,
                      size: 100,
                    )
                  ],
                ),
              );
            }
            if (state.isError) {
              return Padding(
                padding: EdgeInsets.only(top: size.height * 0.2),
                child: const ErrorBox(),
              );
            }
            invoice = state.invoice;
            if (invoice.data != null) {
              fieldList = invoice.data!.toList();
              goodsId = invoice.data!.id.toString();
              invoiceno = invoice.data!.invoiceno ??= '';
              recieverAddress = invoice.data!.recieverAddress ??= '';
              
              reWeightValue = invoice.data!.rewight ??= 0;
              // ref.read(reWeightValueChanger.notifier).state =
              //     invoice.data!.rewight ??= 0;
            }
          }
          if (fieldList.isEmpty) {
            return Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.2,
                  ),
                  const EmptyBox()
                ],
              ),
            );
          }

          return BlocBuilder<ReWeightBloc, ReWeightState>(
            builder: (context, state) {
              if (state is showResult) {
                if (state.isLoading) {
                  return Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.4,
                        ),
                        const FourRotatingDots(
                          color: kBlackColor,
                          size: 100,
                        )
                      ],
                    ),
                  );
                }
                BlocProvider.of<ReWeightBloc>(context)
                    .add(const ReWeightEvent.initializeEvent());
                // BlocProvider.of<InvoiceBloc>(context)
                //     .add(InvoiceEvent.getInvoice(invoiceNumber: invoiceno));

                return Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.4,
                      ),
                      const FourRotatingDots(
                        color: kBlackColor,
                        size: 100,
                      )
                    ],
                  ),
                );
              }
              return Column(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CirclePopUpButton(),
                    ),
                  ),
                  DetailsCard(
                    details: details,
                    dummy: fieldList,
                    reWeightValue: ref.watch(reWeightValueChanger) == 0.0
                        ? reWeightValue.toString()
                        : ref.watch(reWeightValueChanger).toString(),
                  ),
                  RcieverAddressCard(recieverAddress: recieverAddress),
                  reWeightController.text.isNotEmpty ? kHeight100 : kHeight,
                  kHeight50,
                  kHeight30,
                ],
              );
            },
          );
        },
      )
          //     ;
          //   },
          // ),
          )),
      floatingActionButton: Consumer(builder: (context, ref, _) {
        return BlocBuilder<ReWeightBloc, ReWeightState>(
          builder: (context, state) {
            if (state is showResult) {
              if (state.isLoading) {
                return const SizedBox();
              }
              if (state.isAdded) {
                Fluttertoast.showToast(
                  gravity: ToastGravity.CENTER,
                  msg: 'Re-Weight Added   ✅',
                  toastLength: Toast.LENGTH_LONG,
                  backgroundColor: Colors.green,
                  textColor: kWhiteColor,
                  fontSize: 22,
                );
              }
            }
            return BlocBuilder<InvoiceBloc, InvoiceState>(
              builder: (context, state) {
               
                if (state is displayInvoice) {
                  if (state.isLoading || state.isError) {
                    return const SizedBox();
                  }

                  buttonInvoice = state.invoice;
                  if (buttonInvoice.data != null) {
                   // log(reWeightValue.toString());
                    final reweight = ref.watch(reWeightValueChanger) == 0.0
                        ? buttonInvoice.data!.rewight??=0
                        : ref.watch(reWeightValueChanger);
                    if (reweight != 0 && reweight > 0) {
                      // generateBarcodeButton = true;
                      Future(() {
                        ref.read(generateBarcodeProvider.notifier).state = true;
                      });
                    } else {
                      Future(() {
                        ref.read(generateBarcodeProvider.notifier).state =
                            false;
                      });
                    }
                  }
                }

                return Padding(
                  padding: ref.watch(reWeightField) == false
                      //reWeightController.text.isEmpty
                      ? EdgeInsets.only(
                          top: size.height - 70,
                          left: size.width * 0.1,
                          right: ref.watch(generateBarcodeProvider) == true
                              ? size.width * 0.2
                              : 0)
                      : EdgeInsets.only(
                          top: size.height - 150, left: size.width * 0.1),
                  child: widget.isFromTripSheet == false
                      ? Column(
                          children: [
                            ref.watch(generateBarcodeProvider) == false
                                ? ReWeightTextField(
                                    controller: reWeightController,
                                    icon: Icons.monitor_weight,
                                    text: 'Add Re-Weight',
                                  )
                                : ClickButton(
                                    onTap: () async {
                                      final id = invoice.data!.id;

                                      File? idBarcode;
                                      if (id != null) {
                                        idBarcode = await generateBarcode(
                                            id.toString());
                                      }
                                      await generateBarcode(invoiceno)
                                          .then((value) => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BarcodeScreen(
                                                      invoiceNum:  invoice
                                                                .data!.invoiceno??='',
                                                        goodsId:
                                                            invoice
                                                                .data!.id
                                                                .toString(),
                                                        irNum: invoice.data!.id
                                                            .toString(),
                                                        barcodeImage: value,
                                                        idBarcode: idBarcode!),
                                              )));
                                    },
                                    text: 'Generate Barcode',
                                    width: size.width * 0.5,
                                    backGroundColor: kBlackColor,
                                    changeColor: kBlackColor.withOpacity(0.3),
                                  ),
                            //reWeightController.text.isNotEmpty
                            ref.watch(reWeightField) == true
                                ? ClickButton(
                                    onTap: () {
                                      // setState(() {
                                      // details.add('RE-WEIGHT');
                                      // dummy.add(reWeightController.text);

                                      BlocProvider.of<ReWeightBloc>(context)
                                          .add(ReWeightEvent.addReWeight(
                                              reWeight: reWeightController.text,
                                              goodsId: goodsId));

                                      ref
                                          .read(
                                              generateBarcodeProvider.notifier)
                                          .state = true;
                                      ref.read(reWeightField.notifier).state =
                                          false;
                                      ref
                                              .read(reWeightValueChanger.notifier)
                                              .state =
                                          double.parse(reWeightController.text);
                                      reWeightController.clear();
                                      // });
                                    },
                                    backGroundColor: kBlackColor,
                                    changeColor: kBlackColor.withOpacity(0.3),
                                    text: 'Save',
                                    width: size.width * 0.5,
                                  )
                                : const SizedBox(),
                          ],
                        )
                      : ClickButton(
                          onTap: () async {
                            addInvoiceToCargo(invoice, widget.tripSheetId);
                          },
                          text: 'Add to tripsheet',
                          width: size.width * 0.5,
                          backGroundColor: kBlackColor,
                          changeColor: kBlackColor.withOpacity(0.3),
                        ),
                );
              },
            );
          },
        );
      }),
    );
  }

  void addInvoiceToCargo(Invoice invoice, String tripSheetId) {
    final cargo = Cargo(
      address: invoice.data!.recieverAddress,
      company: invoice.data!.company,
      district: invoice.data!.district,
      goodsId: invoice.data!.id.toString(),
      invoiceno: invoice.data!.invoiceno,
      pcs: invoice.data!.pcs,
      phone: invoice.data!.phone,
      tripSheetId: tripSheetId,
      weight: invoice.data!.weight,
    );

    BlocProvider.of<CargoBloc>(context).add(CargoEvent.addCargo(cargo: cargo));
    BlocProvider.of<TripSheetBloc>(context)
        .add(TripSheetEvent.getCargo(tripNumber: int.parse(tripSheetId)));

    Navigator.pop(context);
  }
}

class RcieverAddressCard extends StatelessWidget {
  const RcieverAddressCard({
    super.key,
    required this.recieverAddress,
  });
  final String recieverAddress;

  @override
  Widget build(BuildContext context) {
    final List<String> textList = recieverAddress.split(',');
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
    required this.reWeightValue,
  });

  final List details;
  final List dummy;
  final String reWeightValue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                            SizedBox(
                                width: size.width * 0.45,
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: DetailsText(
                                        dummy: index == 14
                                            ? reWeightValue
                                            : dummy[index] ??= ''))),
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
          overflow: TextOverflow.ellipsis,
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
          fontSize: 14,
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

Future<File> generateBarcode(
  String invoiceno,
) async {
  final barcode = Barcode.code93();
  final svg = barcode.toSvg(invoiceno, width: 200, height: 200);
  final fileName = invoiceno.replaceAll(RegExp(r'\s'), '-').toLowerCase();

  // Get the document directory where you want to save the file
  final directory = await getApplicationDocumentsDirectory();
  final filePath = '${directory.path}/$fileName.svg';

  final file = File(filePath);
  await file.writeAsString(svg);

  return file;
}
