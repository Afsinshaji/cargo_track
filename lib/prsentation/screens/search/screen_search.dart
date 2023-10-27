import 'dart:developer';

import 'package:cargo_track/application/all_invoice/all_invoice_bloc.dart';
import 'package:cargo_track/application/all_trip_sheet/all_trip_sheet_bloc.dart';
import 'package:cargo_track/application/invoice/invoice_bloc.dart';
import 'package:cargo_track/application/riverpod/invoice/invoice_screen.dart';
import 'package:cargo_track/application/riverpod/search/search.dart';
import 'package:cargo_track/application/trip_sheet/trip_sheet_bloc.dart';

import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/domain/all_invoice/all_invoice/datum.dart';

import 'package:cargo_track/domain/all_trip_sheet/all_trip_sheet/datum.dart';
import 'package:cargo_track/prsentation/screens/invoice/screen_invoice.dart';
import 'package:cargo_track/prsentation/screens/search/widgets/floating_refresh_button.dart';
import 'package:cargo_track/prsentation/screens/search/widgets/invoice_card_item.dart';
import 'package:cargo_track/prsentation/screens/search/widgets/search_bar.dart';
import 'package:cargo_track/prsentation/screens/trip_sheet/screen_trip_sheet.dart';
import 'package:cargo_track/prsentation/widgets/error_box.dart';
import 'package:cargo_track/prsentation/widgets/four_rotating_drop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  static ValueNotifier<String> searching = ValueNotifier('');

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
          floatingActionButton: RefreshingFloatingButton(size: size),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(size.height * 0.198),
            child: Column(
              children: [
                SearchingBar(size: size),
                SizedBox(
                  height: size.height * 0.075,
                  child: const TabBar(
                      // labelStyle: ,
                      indicatorPadding: EdgeInsets.all(10),
                      tabs: [
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
          body: SafeArea(
              child: ValueListenableBuilder(
                  valueListenable: searching,
                  builder: (context, value, _) {
                    return TabBarView(children: [
                      ListInvoice(size: size, serchingInvoice: searching.value),
                      ListTripSheet(
                        size: size,
                        searchingTripSheet: searching.value,
                      )
                    ]);
                  }))),
    );
  }
}

class ListInvoice extends StatefulWidget {
  const ListInvoice({
    super.key,
    required this.size,
    required this.serchingInvoice,
  });

  final Size size;
  final String serchingInvoice;

  @override
  State<ListInvoice> createState() => _ListInvoiceState();
}

class _ListInvoiceState extends State<ListInvoice> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('building...');
    List<InvoiceDatum> invoiceList = [];
    return BlocBuilder<AllInvoiceBloc, AllInvoiceState>(
      builder: (context, state) {
        if (state is displayingAllInvoice) {
          if (state.isLoading) {
            return const Center(
                child: FourRotatingDots(
              color: kBlackColor,
              size: 100,
            ));

            //     CircularProgressIndicator(
            //   color: kBlueColor,
            // ));
          }
          if (state.isError) {
            return const ErrorBox();
          }

          invoiceList = state.allInvoiceList;
        }
        return InvoiceBuilder(invoicedList: invoiceList, widget: widget);
      },
    );
  }
}

class InvoiceBuilder extends ConsumerWidget {
  const InvoiceBuilder({
    super.key,
    required this.invoicedList,
    required this.widget,
  });

  final List<InvoiceDatum> invoicedList;
  final ListInvoice widget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String search = ref.watch(searchProvider);
    List<InvoiceDatum> invoiceList = [];
    invoiceList = invoicedList;

    if (search.isNotEmpty) {
      invoiceList = invoiceList
          .where((element) => element.invoiceno!.contains(search))
          .toList();
    }
    return ListView.builder(
      itemCount: invoiceList.length,
      itemBuilder: (context, index) {
        return InvoiceCardItem(
          size: widget.size,
          invoiceNum: invoiceList[index].invoiceno ??= 'No Invoice number',
          onTap: () {
            BlocProvider.of<InvoiceBloc>(context).add(InvoiceEvent.getInvoice(
                invoiceNumber: invoiceList[index].invoiceno ??= ''));
            ref.read(reWeightValueChanger.notifier).state = 0.0;
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const InvoiceScreen(),
                ));
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
    required this.searchingTripSheet,
  });

  final Size size;
  final String searchingTripSheet;

  @override
  State<ListTripSheet> createState() => _ListTripSheetState();
}

class _ListTripSheetState extends State<ListTripSheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Datum> tripSheetList = [];
    return BlocBuilder<AllTripSheetBloc, AllTripSheetState>(
      builder: (context, state) {
        if (state is displayingAllTripSheet) {
          if (state.isLoading) {
            return const Center(
                child: FourRotatingDots(
              color: kBlackColor,
              size: 100,
            ));

            //      CircularProgressIndicator(
            //   color: kBlueColor,
            // ));
          }
          if (state.isError) {
            return const ErrorBox();
          }
          tripSheetList = state.allTripSheetList;
        }

        return TripSheetBuilder(tripList: tripSheetList, widget: widget);
      },
    );
  }
}

class TripSheetBuilder extends ConsumerWidget {
  const TripSheetBuilder({
    super.key,
    required this.tripList,
    required this.widget,
  });

  final List<Datum> tripList;
  final ListTripSheet widget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String search = ref.watch(searchProvider);
    List<Datum> tripSheetList = [];
    tripSheetList = tripList;

    if (search.isNotEmpty) {
      tripSheetList = tripList
          .where((element) => element.tripNumber!.toString().contains(search))
          .toList();
    }
    return ListView.builder(
      itemCount: tripSheetList.length,
      itemBuilder: (context, index) {
        int num = tripSheetList[index].tripNumber ??= 0;
        return InvoiceCardItem(
          size: widget.size,
          invoiceNum: num.toString(),
          onTap: () {
            BlocProvider.of<TripSheetBloc>(context)
                .add(TripSheetEvent.getCargo(tripNumber: num));
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const TripSheetScreen(),
                ));
          },
        );
      },
    );
  }
}

// search(String value) {
//     setState(() {
//       SearchScreen.searching.value = value;
//     });
//   }
