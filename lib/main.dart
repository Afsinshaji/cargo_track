import 'package:cargo_track/application/all_invoice/all_invoice_bloc.dart';
import 'package:cargo_track/application/all_trip_sheet/all_trip_sheet_bloc.dart';
import 'package:cargo_track/application/cargo/cargo_bloc.dart';
import 'package:cargo_track/application/invoice/invoice_bloc.dart';
import 'package:cargo_track/application/login/login_bloc.dart';
import 'package:cargo_track/application/trip_sheet/trip_sheet_bloc.dart';
import 'package:cargo_track/prsentation/screens/splash_screen/screen_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllInvoiceBloc(),
        ),
        BlocProvider(
          create: (context) => TripSheetBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => InvoiceBloc(),
        ),
        BlocProvider(
          create: (context) => CargoBloc(),
        ),
        BlocProvider(
          create: (context) => AllTripSheetBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cargo Track',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
