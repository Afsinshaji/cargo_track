import 'package:cargo_track/application/login/login.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/infrastructure/login/login_implementation.dart';

import 'package:cargo_track/prsentation/screens/search/screen_search.dart';
import 'package:cargo_track/prsentation/screens/login/widget/text_before_field.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';
import 'package:cargo_track/prsentation/screens/login/widget/login_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/logo_image_box.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
          child: Form(
        key: loginKey,
        child: ListView(
          children: [
            Container(
                color: kWhiteColor,
                height: size.height * 0.3,
                child: Align(
                    alignment: Alignment.center,
                    child: LogoImageBox(logoHeight: size.width * 0.3))),
            Stack(
              children: [
                Container(
                  color: kBlueColor,
                  width: size.width,
                  height: size.height * 0.67,
                ),
                Positioned(
                  child: Container(
                    width: size.width,
                    height: size.height * 0.2,
                    decoration: const BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ),
                ),
                Positioned(
                  child: EmailPasswordCard(
                      emailController: emailController,
                      passwordController: passwordController,
                      loginKey: loginKey,
                      size: size),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

class EmailPasswordCard extends StatelessWidget {
  const EmailPasswordCard({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.loginKey,
    required this.size,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> loginKey;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        shadowColor: kBlackColor,
        elevation: 3,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          kHeight30,
          const TextbeforeField(text: 'Email'),
          kHeight,
          LoginTextField(
            controller: emailController,
            text: "Enter Email Id",
            icon: Icons.person_2_outlined,
            isTextPasswordType: false,
            isTextEmailType: true,
          ),
          kHeight20,
          const TextbeforeField(text: 'Password'),
          kHeight,
          LoginTextField(
            controller: passwordController,
            text: "Enter password",
            icon: Icons.lock_outline,
            isTextPasswordType: true,
          ),
          kHeight20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: ClickButton(
                changeColor: kWhiteColor.withOpacity(0.6),
                onTap: () async {
                  if (loginKey.currentState!.validate()) {
                    await LoginApplication()
                        .login(
                            userName: emailController.text,
                            password: passwordController.text)
                        .then((isLogged) {
                      if (isLogged == true) {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => SearchScreen(),
                            ));
                      } else {}
                    });
                  }
                },
                width: size.width * 0.5,
                text: 'Login',
              ),
            ),
          ),
          kHeight,
        ]),
      ),
    );
  }
}
