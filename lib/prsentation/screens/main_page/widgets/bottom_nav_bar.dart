import 'package:cargo_track/application/riverpod/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:cargo_track/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavBar extends ConsumerStatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends ConsumerState<BottomNavBar> {
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
                    const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8),
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
                  tabs: [
                    const GButton(
                      icon: Icons.dashboard,
                      text: 'Dashboard',
                    ),
                    GButton(
                      onPressed: () {
                        ref.read(searchProvider.notifier).state = '';
                      },
                      icon: Icons.search,
                      text: 'Search',
                    ),
                    const GButton(
                      icon: Icons.qr_code,
                      text: 'Scanner',
                    ),
                    const GButton(
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
