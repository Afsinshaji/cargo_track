import 'dart:developer';

import 'package:cargo_track/infrastructure/services/mysql.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:cargo_track/infrastructure/services/shared_preferences/login_authorization.dart';
import 'package:cargo_track/prsentation/screens/dashboard/widgets/sample.dart';

import 'package:cargo_track/prsentation/screens/login/screen_login.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';
import 'package:flutter/material.dart';

const int count = 9;

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              MealsListView(
                mainScreenAnimation: Tween<double>(begin: 0.0, end: 1.0)
                    .animate(CurvedAnimation(
                        parent: animationController!,
                        curve: Interval((1 / count) * 3, 1.0,
                            curve: Curves.fastOutSlowIn))),
                mainScreenAnimationController: animationController,
              ),
              ClickButton(
                  onTap: () async {
                    // var auth = await StorageService.instance
                    //     .readSecureData('authToken');
                    // log(auth ??= 'nothing');
                    await StorageService.instance.deleteAllSecureData();
                    await LoginAuthorization.instance.deleteAuthToken();
                    await LoginAuthorization.instance
                        .setLoginFalse()
                        .then((value) => Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                            (route) => false));
                  },
                  width: 200,
                  text: 'Logout'),
            ],
          ),
        ),
      ),
    );
  }
}
