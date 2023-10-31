import 'dart:developer';

import 'package:cargo_track/application/reports/reports_bloc.dart';
import 'package:cargo_track/application/riverpod/reports/reports.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/list/list.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:cargo_track/infrastructure/services/shared_preferences/login_authorization.dart';
import 'package:cargo_track/prsentation/screens/login/screen_login.dart';
import 'package:cargo_track/prsentation/screens/reports/screen_each_report.dart';
import 'package:cargo_track/prsentation/screens/reports/widgets/invoice_field.dart';
import 'package:cargo_track/prsentation/widgets/alert_box.dart';
import 'package:cargo_track/prsentation/widgets/dropdown_field.dart';
import 'package:cargo_track/prsentation/widgets/empty_box.dart';
import 'package:cargo_track/prsentation/widgets/four_rotating_drop.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

const int count = 9;

// ignore: must_be_immutable
class ReportsScreen extends ConsumerWidget {
  ReportsScreen({super.key});

  AnimationController? animationController;
  final DraggableScrollableController dragController =
      DraggableScrollableController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBlueColor.withOpacity(0.3),
      body: RefreshIndicator(
        onRefresh: ()async{
    BlocProvider.of<ReportsBloc>(context)
            .add(const ReportsEvent.getAllReports());
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: null,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: size.width * 0.1,
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            width: size.width * 0.7,
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
                          Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {
                                  alertBox(context, 'Logging Out', ()async {
                                                 
      
                                                  await StorageService.instance
                                                      .deleteAllSecureData();
                                                  await LoginAuthorization
                                                      .instance
                                                      .deleteAuthToken();
                                                  await LoginAuthorization
                                                      .instance
                                                      .setLoginFalse()
                                                      .then((value) => Navigator
                                                          .pushAndRemoveUntil(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) =>
                                                                    LoginScreen(),
                                                              ),
                                                              (route) => false));
                                                },);
                                  // openDraggableBottomSheet(
                                  //     controller: dragController,
                                  //     child: Material(
                                  //       elevation: 50,
                                  //       shadowColor: kBlackColor,
                                  //       borderRadius: const BorderRadius.only(
                                  //         topLeft: Radius.circular(80),
                                  //         topRight: Radius.circular(80),
                                  //       ),
                                  //       child: Container(
                                  //         height: size.height * 0.3,
                                  //         decoration: const BoxDecoration(
                                  //             borderRadius: BorderRadius.only(
                                  //               topLeft: Radius.circular(80),
                                  //               topRight: Radius.circular(80),
                                  //             ),
                                  //             color: kWhiteColor),
                                  //         child: Padding(
                                  //           padding:
                                  //               EdgeInsets.all(size.width * 0.2),
                                  //           child: ClickButton(
                                  //               boxShadow: [
                                  //                 BoxShadow(
                                  //                     blurRadius: 0.5,
                                  //                     color: kBlackColor
                                  //                         .withOpacity(0.5),
                                  //                     spreadRadius: 0.01,
                                  //                     offset: const Offset(2, 2))
                                  //               ],
                                  //               width: size.width * 0.5,
                                                // onTap: () async {
                                                //   // var auth = await StorageService.instance
                                                //   //     .readSecureData('authToken');
                                                //   // log(auth ??= 'nothing');
                                                //   dragController.jumpTo(0);
      
                                                //   await StorageService.instance
                                                //       .deleteAllSecureData();
                                                //   await LoginAuthorization
                                                //       .instance
                                                //       .deleteAuthToken();
                                                //   await LoginAuthorization
                                                //       .instance
                                                //       .setLoginFalse()
                                                //       .then((value) => Navigator
                                                //           .pushAndRemoveUntil(
                                                //               context,
                                                //               MaterialPageRoute(
                                                //                 builder: (context) =>
                                                //                     LoginScreen(),
                                                //               ),
                                                //               (route) => false));
                                                // },
                                  //               text: 'Logout'),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //     context: context);
                                },
                                icon: const Icon(Icons.logout),
                                color: kBlackColor,
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.05,
                      top: size.height * 0.13,
                      child: ReportDropdownStack(
                        size: size,
                        ref: ref,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([])),
            BlocBuilder<ReportsBloc, ReportsState>(
              builder: (context, state) {
                List<ReportsDTO> allReportsList = [];
                final ReportsSearchDTO reportsSearch =
                    ref.watch(reportsSearchProvider);
                bool isLoaded = true;
                if (state is displayingReports) {
                  // log(state.allReportsList.toString());
                  if (state.isLoading) {
                    isLoaded = false;
                  }
                  if (!state.isLoading) {
                    isLoaded = true;
                  }
      
                  allReportsList = state.allReportsList;
      
                  if (reportsSearch.invoice.isNotEmpty) {
                    final invoice = reportsSearch.invoice;
                    if (reportsSearch.filter == 'Contains') {
                      final searchList = allReportsList
                          .where((element) =>
                              element.invoiceNumber.contains(invoice))
                          .toList();
                      allReportsList = searchList;
                    } else if (reportsSearch.filter == 'Start With') {
                      final searchList = allReportsList
                          .where((element) =>
                              element.invoiceNumber.startsWith(invoice))
                          .toList();
                      allReportsList = searchList;
                    } else if (reportsSearch.filter == 'Exact') {
                      final searchList = allReportsList
                          .where((element) => element.invoiceNumber == invoice)
                          .toList();
                      allReportsList = searchList;
                    }
                  }
                  if (reportsSearch.vehicleNum.isNotEmpty) {
                    final searchList = allReportsList
                        .where((element) =>
                            element.vehicleNumber == reportsSearch.vehicleNum)
                        .toList();
                    allReportsList = searchList;
                  }
                  if (reportsSearch.cargoName.isNotEmpty) {
                    final searchList = allReportsList
                        .where((element) =>
                            element.cargoName == reportsSearch.cargoName)
                        .toList();
                    allReportsList = searchList;
                  }
                  // log('Here${allReportsList.toString()}');
                }
      
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, int sliverindex) {
                      if (sliverindex == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 15, right: 20, bottom: 10),
                          child: Column(
                            children: [
                              Center(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.3),
                                child: const Divider(
                                  color: kGreyColor,
                                  thickness: 5,
                                ),
                              )),
                              Row(children: [
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
                            ],
                          ),
                        );
                      }
                      if (!isLoaded) {
                        return const Center(
                          child: FourRotatingDots(
                            color: kBlueColor,
                            size: 100,
                          ),
                        );
                      }
                      return SizedBox(
                        height: size.height * 0.73,
                        child: allReportsList.isEmpty
                            ? const EmptyBox()
                            : ListView.builder(
                                // shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => EachReportScreen(
                                            report: allReportsList[index]),
                                      ));
                                    },
                                    title: Container(
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                blurRadius: 2,
                                                color: kBlackColor,
                                                spreadRadius: 0,
                                                offset: Offset(1, 1))
                                          ],
                                          color: allReportsList[index].status == 3
                                              ? kGreenColor
                                              : kBlueColor,
                                          borderRadius: const BorderRadius.only(
                                            bottomRight: Radius.circular(50),
                                            topLeft: Radius.circular(50),
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(8),
                                        height: size.width * 0.2,
                                        width: size.width * 0.9,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: size.width * 0.3,
                                              child: Text(
                                                allReportsList[index]
                                                    .invoiceNumber,
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                    letterSpacing: .5,
                                                    fontSize: 18,
                                                    color: kBlackColor,
                                                    fontWeight: FontWeight.w600,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  allReportsList[index]
                                                      .driverName,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      letterSpacing: .5,
                                                      fontSize: 16,
                                                      color: kBlackColor,
                                                      fontWeight: FontWeight.w600,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  allReportsList[index]
                                                      .vehicleNumber,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      letterSpacing: .5,
                                                      fontSize: 16,
                                                      color: kBlackColor,
                                                      fontWeight: FontWeight.w600,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                  );
                                },
                                itemCount: allReportsList.length,
                              ),
                      );
                    },
                    childCount: 2,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ReportDropdownStack extends StatefulWidget {
  const ReportDropdownStack({
    super.key,
    required this.size,
    required this.ref,
  });

  final Size size;
  final WidgetRef ref;

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
            SizedBox(
              height: widget.size.height * 0.01,
            ),
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
            SizedBox(
              height: widget.size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                children: [
                  SizedBox(
                    height: widget.size.height * 0.06,
                    child: const Material(
                      elevation: 2,
                      shadowColor: kBlackColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        bottomLeft: Radius.circular(35),
                      )),
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: FilterDropDown(),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: widget.size.height * 0.06,
                      width: widget.size.width * 0.56,
                      child: InvoiceField(
                        size: widget.size,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: widget.size.height * 0.03,
            ),
            BlocBuilder<ReportsBloc, ReportsState>(builder: (context, state) {
              List<String> allCargoName = [];
              List<String> allVehicle = [];
              if (state is displayingReports) {
                if (state.isLoading) {
                  return const Center(
                    child: FourRotatingDots(
                      color: kBlueColor,
                      size: 100,
                    ),
                  );
                }
                allCargoName = state.allCargoNameList;
                allVehicle = state.allVehicleList;
                log(allVehicle.toString());
                log(allCargoName.toString());
              }
              return Column(
                children: [
                  DropDownSearchTextField(
                    hintText: 'Vehicle Number',
                    dataList: allVehicle,
                    isVehicleNum: true,
                  ),
                  SizedBox(
                    height: widget.size.height * 0.03,
                  ),
                  DropDownSearchTextField(
                    hintText: 'Cargo Name',
                    dataList: allCargoName,
                    isVehicleNum: false,
                  ),
                ],
              );
            }),
            SizedBox(
              height: widget.size.height * 0.01,
            ),
            Center(
              child: ClickButton(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 0.5,
                      color: kBlackColor.withOpacity(0.5),
                      spreadRadius: 0.01,
                      offset: const Offset(2, 2))
                ],
                onTap: () {
                  setState(() {});

                  searchInReports(
                    widget.ref.watch(reportsFilterProvider),
                    widget.ref.watch(reportsInvoiceProvider),
                    widget.ref.watch(reportsVehicleNumProvider),
                    widget.ref.watch(reportsCargoProvider),
                    widget.ref,
                  );
                },
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

class FilterDropDown extends ConsumerWidget {
  const FilterDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<String>(
      underline: const SizedBox(),
      value: ref.watch(reportsFilterProvider),
      icon: const Icon(Icons.keyboard_arrow_down),
      items: reportDropDownInvoiceFilters.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (String? newValue) {
        selectFilter(newValue!, ref);
      },
    );
  }
}

class DropDownSearchTextField extends ConsumerWidget {
  const DropDownSearchTextField({
    super.key,
    required this.hintText,
    required this.dataList,
    required this.isVehicleNum,
  });
  final String hintText;
  final List<String> dataList;
  final bool isVehicleNum;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      elevation: 2,
      shadowColor: kBlackColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: DropDownTextField(
            initialValue: '',
            onChanged: (value) {
              String newValue = '';
              if (value is DropDownValueModel) {
                newValue = value.value;
              }
              if (isVehicleNum == true) {
                addVehicleNum(newValue, ref);
              } else {
                addCargoName(newValue, ref);
              }
            },
            hintText: hintText,
            enableSearch: true,
            dropDownList: List.generate(
              dataList.length,
              (index) => DropDownValueModel(
                  name: dataList[index], value: dataList[index]),
            )),
      ),
    );
  }
}

// Image.asset(
//               'assets/images/isometric-illustration-concept-expedition-of-land-sea-and-air-free-vector-removebg-preview.png'),
          // ClickButton(
          //     onTap: () async {
          //       // var auth = await StorageService.instance
          //       //     .readSecureData('authToken');
          //       // log(auth ??= 'nothing');

          //       alertSnackbar(context, '');
          //       await StorageService.instance.deleteAllSecureData();
          //       await LoginAuthorization.instance.deleteAuthToken();
          //       await LoginAuthorization.instance
          //           .setLoginFalse()
          //           .then((value) => Navigator.pushAndRemoveUntil(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => LoginScreen(),
          //               ),
          //               (route) => false));
          //     },
          //     width: 200,
          //     text: 'Logout'),
