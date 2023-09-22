import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:cargo_track/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, newIndex, _) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: kWhiteColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.blue[100]!,
                  tabBackgroundGradient:
                      const LinearGradient(colors: [kBlueColor, kWhiteColor]),
                  gap: 0,
                  activeColor: kBlackColor,
                  iconSize: 26,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey[100]!,
                  color: kBlueColor,
                  tabs: const [
                    GButton(
                      icon: Icons.dashboard,
                      text: 'Dashboard',
                    ),
                    GButton(
                      icon: Icons.search,
                      text: 'Search',
                    ),
                    GButton(
                      icon: Icons.qr_code,
                      text: 'Scanner',
                    ),
                    GButton(
                      icon: Icons.file_copy,
                      text: 'Reports',
                    ),
                  ],
                  // selectedIndex: _selectedIndex,
                  selectedIndex: newIndex,
                  onTabChange: (index) {
                    // _selectedIndex = index;
                    indexChangeNotifier.value = index;
                  },
                ),
              ),
            ),
          );
        });
  }
}
