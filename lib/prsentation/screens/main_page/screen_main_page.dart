import 'package:cargo_track/prsentation/screens/reports/screen_reports.dart';
import 'package:cargo_track/prsentation/screens/dashboard/screen_dashboard.dart';
import 'package:cargo_track/prsentation/screens/main_page/widgets/bottom_nav_bar.dart';
import 'package:cargo_track/prsentation/screens/scanner/screen_scanner.dart';
import 'package:cargo_track/prsentation/screens/scanner/sample.dart';
import 'package:flutter/material.dart';

import '../search/screen_search.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({super.key});
  final List _pages = [
    const DaashBoardScreen(),
    SearchScreen(),
    const BarcodeScannerWithZoom(),
    const ReportsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, index, child) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
