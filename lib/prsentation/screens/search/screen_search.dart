import 'dart:developer';

import 'package:cargo_track/application/all_invoice/all_invoice_bloc.dart';
import 'package:cargo_track/application/all_trip_sheet/all_trip_sheet_bloc.dart';
import 'package:cargo_track/application/invoice/invoice_bloc.dart';

import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/domain/all_invoice/all_invoice/datum.dart';
import 'package:cargo_track/domain/all_trip_sheet/all_trip_sheet/all_trip_sheet.dart';
import 'package:cargo_track/domain/all_trip_sheet/all_trip_sheet/datum.dart';
import 'package:cargo_track/prsentation/screens/invoice/screen_invoice.dart';
import 'package:cargo_track/prsentation/screens/trip_sheet/screen_trisp_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        // For Lazy Loading in Future
      }
    });

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar:
              // AppBar(
              //   bottom:
              PreferredSize(
            preferredSize: Size.fromHeight(size.height * 0.235),
            child: Column(
              children: [
                SearchBar(),
                SizedBox(
                  height: size.height * 0.08,
                  child:
                      const TabBar(indicatorPadding: EdgeInsets.all(10), tabs: [
                    Tab(
                      text: 'Invoice',
                    ),
                    Tab(
                      text: 'Trip Sheet',
                    )
                  ]),
                )
              ],
            ),
          ),
          // ),
          //  PreferredSize(
          //   preferredSize: Size.fromHeight(size.height * 0.17),
          //   child: const SearchBar(),
          // ),
          body: SafeArea(
              child: TabBarView(children: [
            ListInvoice(size: size),
            ListTripSheet(size: size)
          ])
              // TabBarView(children: [
              //     ListInvoice(size: size),
              //     ListTripSheet(size: size)
              //   ])
              //     ListView.builder(
              //   itemCount: 30,
              //   itemBuilder: (context, index) {
              //     return InvoiceCardItem(size: size);
              //   },
              // )
              )),
    );
  }
}

class ListInvoice extends StatefulWidget {
  const ListInvoice({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ListInvoice> createState() => _ListInvoiceState();
}

class _ListInvoiceState extends State<ListInvoice> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AllInvoiceBloc>(context)
        .add(const AllInvoiceEvent.getAllInvoiceList());
  }

  @override
  Widget build(BuildContext context) {
    List<InvoiceDatum> invoiceList = [];
    return BlocBuilder<AllInvoiceBloc, AllInvoiceState>(
      builder: (context, state) {
        if (state is displayingAllInvoice) {
          if (state.isLoading) {
            return const Center(
                child: CircularProgressIndicator(
              color: kBlueColor,
            ));
          }
          invoiceList = state.allInvoiceList;
        }
        return ListView.builder(
          itemCount: invoiceList.length,
          itemBuilder: (context, index) {
            return InvoiceCardItem(
              size: widget.size,
              invoiceNum: invoiceList[index].invoiceno ??= 'No Invoice number',
            );
          },
        );
      },
    );
  }
}

class ListTripSheet extends StatefulWidget {
  const ListTripSheet({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ListTripSheet> createState() => _ListTripSheetState();
}

class _ListTripSheetState extends State<ListTripSheet> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AllTripSheetBloc>(context)
        .add(const AllTripSheetEvent.getAllTripSheetList());
  }

  @override
  Widget build(BuildContext context) {
    List<Datum> tripSheetList = [];
    return BlocBuilder<AllTripSheetBloc, AllTripSheetState>(
      builder: (context, state) {
        if (state is displayingAllTripSheet) {
          if (state.isLoading) {
            return const Center(
                child: CircularProgressIndicator(
              color: kBlueColor,
            ));
          }
          tripSheetList = state.allTripSheetList;
        }

        return ListView.builder(
          itemCount: tripSheetList.length,
          itemBuilder: (context, index) {
            final num = tripSheetList[index].tripNumber;
            return InvoiceCardItem(
              size: widget.size,
              invoiceNum: num.toString(),
            );
          },
        );
      },
    );
  }
}

class InvoiceCardItem extends StatelessWidget {
  const InvoiceCardItem({
    super.key,
    required this.size,
    required this.invoiceNum,
  });

  final Size size;
  final String invoiceNum;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: InkWell(
        onTap: () {
          BlocProvider.of<InvoiceBloc>(context)
              .add(InvoiceEvent.getInvoice(invoiceNumber: invoiceNum));
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const InvoiceScreen(),
              ));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          shadowColor: kBlackColor,
          elevation: 2,
          child: SizedBox(
            width: size.width * 0.1,
            height: size.height * 0.08,
            child: Center(
              child: Text(
                invoiceNum,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  SearchBar({
    super.key,
  });

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          )),
      child: Column(
        children: [
          kHeight50,
          kHeight30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Material(
              shadowColor: kBlackColor,
              elevation: 2,
              borderRadius: BorderRadius.circular(25),
              child: TextField(
                controller: searchController,
                keyboardType: TextInputType.number,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    letterSpacing: .3,
                    fontSize: 15,
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                cursorColor: kBlackColor,
                cursorWidth: 1,
                cursorHeight: 20,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 40, right: 20),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: IconButton(
                        onPressed: () async {
                          // await TripSheetApplication()
                          //     .getCargo(int.parse(searchController.text))
                          //     .then((tripSheet) {
                          //   log(tripSheet.toString());
                          //   Navigator.push(
                          //       context,
                          //       CupertinoPageRoute(
                          //         builder: (context) =>
                          //             TripSheetScreen(tripSheetList: tripSheet),
                          //       ));
                          // });
                        },
                        icon: const Icon(Icons.arrow_forward),
                        color: kBlackColor,
                      ),
                    ),
                    hintText: 'invoice...',
                    hintStyle: TextStyle(
                      color: kBlackColor.withOpacity(0.4),
                    ),
                    filled: true,
                    fillColor: kWhiteColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
