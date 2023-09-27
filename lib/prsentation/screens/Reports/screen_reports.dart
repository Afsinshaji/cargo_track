import 'package:cargo_track/infrastructure/services/shared_preferences/login_authorization.dart';
import 'package:cargo_track/prsentation/screens/login/screen_login.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';
import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClickButton(
          onTap: () async {
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
    );
  }
}
