import 'dart:async';

import 'package:cargo_track/application/all_invoice/all_invoice_bloc.dart';
import 'package:cargo_track/application/all_trip_sheet/all_trip_sheet_bloc.dart';
import 'package:cargo_track/application/reports/reports_bloc.dart';
import 'package:cargo_track/application/riverpod/splash_screen/splash_screen.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/strings/strings.dart';
import 'package:cargo_track/infrastructure/services/shared_preferences/login_authorization.dart';

import 'package:cargo_track/prsentation/screens/login/screen_login.dart';
import 'package:cargo_track/prsentation/screens/main_page/screen_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  double opacity = 0.0;
  @override
  void initState() {
    Timer(const Duration(seconds: 0), () {
      changeOPacity();
    });

    Timer(const Duration(seconds: 3), () {
      navigateUser();
    });
    super.initState();
  }

  changeOPacity() {
    // setState(() {
    //   opacity = 1.0;
    // });
    increaseOpacity(1.0, ref);
  }

  void navigateUser() async {
    await LoginAuthorization.instance.getLoginStatus().then((auth) {
      if (auth == true) {
        BlocProvider.of<AllTripSheetBloc>(context)
            .add(const AllTripSheetEvent.getAllTripSheetList());
        BlocProvider.of<AllInvoiceBloc>(context)
            .add(const AllInvoiceEvent.getAllInvoiceList());
        BlocProvider.of<ReportsBloc>(context)
            .add(const ReportsEvent.getAllReports());
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainPageScreen(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: AnimatedOpacity(
          opacity: ref.watch(opacityProvider),
          duration: const Duration(seconds: 3),
          child: Center(
            child: Image.network(logoImage),
          ),
        ),
      ),
    );
  }
}
