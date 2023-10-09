import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/core/list/list.dart';
import 'package:cargo_track/prsentation/screens/reports/widgets/invoice_field.dart';
import 'package:cargo_track/prsentation/widgets/dropdown_field.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

const int count = 9;

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBlueColor.withOpacity(0.3),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: kBlueColor.withOpacity(0.01),
            expandedHeight: size.height * 0.65,
            flexibleSpace: SizedBox(
              height: size.height * 0.7,
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.3,
                    decoration: const BoxDecoration(
                        color: kBlueColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: size.height * 0.04),
                    child: Text(
                      'Reports',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          letterSpacing: .5,
                          fontSize: 28,
                          color: kBlackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.05,
                    top: size.height * 0.13,
                    child: ReportDropdownStack(
                      size: size,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([])),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 10),
                    child: Row(children: [
                      Text(
                        'Invoices',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            fontSize: 16,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down_outlined)
                    ]),
                  );
                }

                return ListTile(
                  title: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              color: kBlackColor,
                              spreadRadius: 0,
                              offset: Offset(1, 1))
                        ],
                        color: index / 2 == 1 ? kBlueColor : kGreenColor,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      height: size.width * 0.2,
                      width: size.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '1404',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                letterSpacing: .5,
                                fontSize: 18,
                                color: kBlackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'Nisar Ahammed',
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
                                'KL-35-E-0715',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    letterSpacing: .5,
                                    fontSize: 16,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class ReportDropdownStack extends StatefulWidget {
  const ReportDropdownStack({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ReportDropdownStack> createState() => _ReportDropdownStackState();
}

class _ReportDropdownStackState extends State<ReportDropdownStack> {
  var dropdownvalue = reportDropDownInvoiceFilters[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width * 0.9,
      height: widget.size.height * 0.5,
      decoration: BoxDecoration(
          color: kWhiteColor.withOpacity(0.75),
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight30,
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Filter',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    letterSpacing: .5,
                    fontSize: 18,
                    color: kBlackColor.withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            kHeight,
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                children: [
                  Material(
                    elevation: 2,
                    shadowColor: kBlackColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      bottomLeft: Radius.circular(35),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButton<String>(
                        underline: const SizedBox(),
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: reportDropDownInvoiceFilters.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                      width: widget.size.width * 0.58,
                      child: InvoiceField(
                        size: widget.size,
                      )),
                ],
              ),
            ),
            kHeight30,
            const DropDownSearchTextField(
              hintText: 'Vehicle Number',
            ),
            kHeight30,
            const DropDownSearchTextField(hintText: 'Cargo Name'),
            kHeight20,
            Center(
              child: ClickButton(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 0.5,
                      color: kBlackColor.withOpacity(0.5),
                      spreadRadius: 0.01,
                      offset: const Offset(2, 2))
                ],
                onTap: () {},
                width: widget.size.width * 0.85,
                text: 'Search',
                height: widget.size.width * 0.13,
                changeColor: kWhiteColor.withOpacity(0.8),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DropDownSearchTextField extends StatelessWidget {
  const DropDownSearchTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: kBlackColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: DropDownTextField(
            hintText: hintText,
            enableSearch: true,
            dropDownList: List.generate(
              100,
              (index) =>
                  const DropDownValueModel(name: 'KL 06-22-07', value: 1),
            )),
      ),
    );
  }
}

// Image.asset(
//               'assets/images/isometric-illustration-concept-expedition-of-land-sea-and-air-free-vector-removebg-preview.png'),
//           ClickButton(
//               onTap: () async {
//                 // var auth = await StorageService.instance
//                 //     .readSecureData('authToken');
//                 // log(auth ??= 'nothing');

//                 alertSnackbar(context, '');
//                 await StorageService.instance.deleteAllSecureData();
//                 await LoginAuthorization.instance.deleteAuthToken();
//                 await LoginAuthorization.instance
//                     .setLoginFalse()
//                     .then((value) => Navigator.pushAndRemoveUntil(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => LoginScreen(),
//                         ),
//                         (route) => false));
//               },
//               width: 200,
//               text: 'Logout'),
