import 'package:cargo_track/application/all_invoice/all_invoice_bloc.dart';
import 'package:cargo_track/application/all_trip_sheet/all_trip_sheet_bloc.dart';
import 'package:cargo_track/application/cargo/cargo_bloc.dart';
import 'package:cargo_track/application/invoice/invoice_bloc.dart';
import 'package:cargo_track/application/login/login_bloc.dart';
import 'package:cargo_track/application/re_weight/re_weight_bloc.dart';
import 'package:cargo_track/application/trip_sheet/trip_sheet_bloc.dart';
import 'package:cargo_track/prsentation/screens/splash_screen/screen_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ReWeightBloc(),
        ),
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
