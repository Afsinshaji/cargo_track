import 'dart:developer';

import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/core/list/list.dart';
import 'package:cargo_track/core/strings/strings.dart';
import 'package:cargo_track/domain/invoice/invoice/invoice.dart';

import 'package:cargo_track/prsentation/screens/add_cargo/get_invoice.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCargoPage extends StatefulWidget {
  const AddCargoPage({
    super.key,
  });
  static ValueNotifier<Invoice?> invoiceNotifier =
      ValueNotifier<Invoice?>(null);

  @override
  State<AddCargoPage> createState() => _AddCargoPageState();
}

class _AddCargoPageState extends State<AddCargoPage> {
  final invoicecontroller = TextEditingController();
  Invoice? invoiceData;
  Invoice? invoice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: invoicecontroller,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.file_open),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                print(invoicecontroller.text);
                log('hellooo');
                invoice = await getinvoice()
                    .getInvoice(invoicenumber: invoicecontroller.text);
                AddCargoPage.invoiceNotifier.value = invoice;

                setState(() {
                  invoiceData = invoice;
                });

                // invoice != null
                //     ? Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) =>
                //             AddCargoPage(invoice: invoice),
                //       ))
                //     : showModalBottomSheet(
                //         context: context,
                //         builder: (context) => Text('error'),
                //       );
                //     .then((value) {
                //   print(invoice!.address.toString());
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => AddCargoPage(invoice: invoice),
                // ));
                // });
                invoicecontroller.clear();
              },
              child: const Text('Submit')),
          ValueListenableBuilder(
            valueListenable: AddCargoPage.invoiceNotifier,
            builder: (context, value, child) {
              if (value != null) {
                final datalist = value.data!.toList();
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            FieldText(
                                                details: detailsList[index]),
                                            DetailsText(
                                                dummy: datalist[index] ??= ''),
                                          ],
                                        ),
                                      ))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
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
                              Divider(
                                  color: kBlackColor.withOpacity(0.6),
                                  height: 10),
                              kHeight,
                              Text(
                                value.data!.recieverAddress!,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    letterSpacing: .5,
                                    fontSize: 16,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w600,
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                );
              } else {
                return const Text('No invoice data available');
              }
            },
          ),
        ],
      ))),
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

// class DetailsCard extends StatelessWidget {
//   const DetailsCard({
//     super.key,

//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         color: kWhiteColor,
//         shadowColor: kBlackColor,
//         elevation: 3,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//               children: List.generate(
//                   detailsList.length,
//                   (index) => Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 15.0, vertical: 10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             FieldText(details: details[index]),
//                             DetailsText(dummy: dummy[index]),
//                           ],
//                         ),
//                       ))),
//         ),
//       ),
//     );
//   }
// }

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
