import 'dart:async';

import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/strings/strings.dart';

import 'package:cargo_track/prsentation/screens/login/screen_login.dart';
import 'package:cargo_track/prsentation/screens/main_page/screen_main_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
    setState(() {
      opacity = 1.0;
    });
  }

  void navigateUser() async {
    const auth = true;
    if (auth == false) {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(seconds: 3),
          child: Center(
            child: Image.network(logoImage),
          ),
        ),
      ),
    );
  }
}
