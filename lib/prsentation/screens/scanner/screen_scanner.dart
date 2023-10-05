import 'dart:developer';

import 'package:cargo_track/application/invoice/invoice_bloc.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/prsentation/screens/invoice/screen_invoice.dart';
import 'package:cargo_track/prsentation/screens/scanner/widgets/scanner_error_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerScreen extends StatefulWidget {
  const BarcodeScannerScreen({Key? key, this.tripSheetId = '', required this.isFromTripSheet})
      : super(key: key);
  final String tripSheetId;
  final bool isFromTripSheet;

  @override
  BarcodeScannerScreenState createState() => BarcodeScannerScreenState();
}

class BarcodeScannerScreenState extends State<BarcodeScannerScreen>
    with SingleTickerProviderStateMixin {
  MobileScannerController controller = MobileScannerController(
    torchEnabled: true,
  );
  BarcodeCapture? capture;
  bool isStarted = true;
  double _zoomFactor = 0.0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body:
            //  Builder(
            //   builder: (context) {
            //     return
            Stack(
          children: [
            MobileScanner(
              overlay: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: size.height * 0.25,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: kBlueColor,
                  width: 1,
                )),
              ),
              controller: controller,
              fit: BoxFit.fill,
              errorBuilder: (context, error, child) {
                return ScannerErrorWidget(error: error);
              },
              onDetect: (barcode) async {
                setState(() {
                  capture = barcode;
                });
                // final barcodeText = barcode.barcodes.first.rawValue;
                // setState(() {});
                // if (barcodeText != null &&
                //     widget.hasFunctionRun.value == false) {
                //   // widget.debouncer.run(() {
                //   navigateToPage(barcodeText);
                //   // });
                // }
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 100,
                color: Colors.black.withOpacity(0.4),
                child: Column(
                  children: [
                    Slider(
                      value: _zoomFactor,
                      onChanged: (value) {
                        setState(() {
                          _zoomFactor = value;
                          controller.setZoomScale(value);
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          color: Colors.white,
                          icon: ValueListenableBuilder(
                            valueListenable: controller.torchState,
                            builder: (context, state, child) {
                              // if (state == null) {
                              //   return const Icon(
                              //     Icons.flash_off,
                              //     color: Colors.grey,
                              //   );
                              // }
                              switch (state) {
                                case TorchState.off:
                                  return const Icon(
                                    Icons.flash_off,
                                    color: Colors.grey,
                                  );
                                case TorchState.on:
                                  return const Icon(
                                    Icons.flash_on,
                                    color: Colors.yellow,
                                  );
                              }
                            },
                          ),
                          iconSize: 32.0,
                          onPressed: () => controller.toggleTorch(),
                        ),
                        IconButton(
                            color: kWhiteColor,
                            iconSize: 32.0,
                            onPressed: () {
                              if (capture != null) {
                                final barcodeText =
                                    capture!.barcodes.first.rawValue;

                                if (barcodeText != null) {
                                  // widget.debouncer.run(() {
                                  if (controller.torchState.value ==
                                      TorchState.on) {
                                    controller.toggleTorch();
                                  }
                                  navigateToPage(barcodeText);
                                  // });
                                }
                              }
                            },
                            icon: const Icon(Icons.camera)),
                        IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.image),
                          iconSize: 32.0,
                          onPressed: () async {
                            final ImagePicker picker = ImagePicker();
                            // Pick an image
                            final XFile? image = await picker.pickImage(
                              source: ImageSource.gallery,
                            );
                            if (image != null) {
                              if (await controller.analyzeImage(image.path)) {
                                if (!mounted) return;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Barcode found!'),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              } else {
                                if (!mounted) return;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('No barcode found!'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                alignment: Alignment.topCenter,
                height: size.height * 0.13,
                decoration: BoxDecoration(
                    color: kBlackColor.withOpacity(0.4),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 200,
                    height: 50,
                    child: FittedBox(
                      child: Text(
                        'Scan Barcode',
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            fontSize: 16,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
        //   },
        // ),
        );
  }

  navigateToPage(String barcodeText) {
    log(barcodeText);
    // Your navigation code here
    final invoiceBloc = BlocProvider.of<InvoiceBloc>(context);
    invoiceBloc.add(InvoiceEvent.getInvoice(invoiceNumber: barcodeText));
    final value = invoiceBloc.state;

    if (value is displayInvoice) {
      log(value.invoice.toString());
      Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => InvoiceScreen(
              isFromTripSheet: widget.isFromTripSheet,
              tripSheetId: widget.tripSheetId,
            ),
          ));
    } else {
      log('Try Again');
    }
  }
}
