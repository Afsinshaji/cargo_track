import 'dart:developer';

import 'package:cargo_track/application/all_invoice/all_invoice_bloc.dart';
import 'package:cargo_track/application/all_trip_sheet/all_trip_sheet_bloc.dart';
import 'package:cargo_track/application/login/login_bloc.dart';
import 'package:cargo_track/application/reports/reports_bloc.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/infrastructure/services/secure_storage/secure_storage.dart';
import 'package:cargo_track/infrastructure/services/shared_preferences/login_authorization.dart';
import 'package:cargo_track/prsentation/screens/main_page/screen_main_page.dart';

import 'package:cargo_track/prsentation/screens/login/widget/text_before_field.dart';
import 'package:cargo_track/prsentation/screens/main_page/widgets/bottom_nav_bar.dart';
import 'package:cargo_track/prsentation/widgets/login_button.dart';
import 'package:cargo_track/prsentation/screens/login/widget/login_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          const TextbeforeField(text: 'UserName'),
          kHeight,
          LoginTextField(
            controller: emailController,
            text: "Enter UserName",
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
          BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is loginAuth) {
                log('0');
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if(state.isError){
                    Fluttertoast.showToast(
                    msg: 'Something went wrong. Please try again!',
                    toastLength: Toast.LENGTH_LONG,
                    backgroundColor: Colors.red,
                    textColor: kWhiteColor,
                    fontSize: 22,
                  );
                   BlocProvider.of<LoginBloc>(context)
                      .add(const LoginEvent.loginInitialized());
                }
                if (state.statusMap['status'] == true) {
                  log('A');
                  StorageService.instance.writeSecureData(StorageItem(
                    'authToken',
                    state.statusMap['authToken'],
                  ));
                  log('B');
                  log(state.statusMap['authToken']);
                  LoginAuthorization.instance
                      .saveAuthorizationToken(state.statusMap['authToken']);

                  LoginAuthorization.instance.setLoginTrue().then((value) {
                    indexChangeNotifier.value = 0;
                    BlocProvider.of<AllTripSheetBloc>(context)
                        .add(const AllTripSheetEvent.getAllTripSheetList());
                    BlocProvider.of<AllInvoiceBloc>(context)
                        .add(const AllInvoiceEvent.getAllInvoiceList());
                    BlocProvider.of<ReportsBloc>(context)
                        .add(const ReportsEvent.getAllReports());

                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => MainPageScreen(),
                      ),
                    );
                    BlocProvider.of<LoginBloc>(context)
                        .add(const LoginEvent.loginInitialized());
                  });
                } else if(state.statusMap['status'] == false) {
                  //Type An Error Here

                  Fluttertoast.showToast(
                    msg: 'Credentials are not Valid',
                    toastLength: Toast.LENGTH_LONG,
                    backgroundColor: Colors.red,
                    textColor: kWhiteColor,
                    fontSize: 22,
                  );
                  BlocProvider.of<LoginBloc>(context)
                      .add(const LoginEvent.loginInitialized());
                }
              }
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Center(
                  child: ClickButton(
                    changeColor: kWhiteColor.withOpacity(0.6),
                    onTap: () async {
                      if (loginKey.currentState!.validate()) {
                        final loginBloc = BlocProvider.of<LoginBloc>(context);
                        loginBloc.add(LoginEvent.login(
                            userName: emailController.text,
                            password: passwordController.text));
                      }
                    },
                    width: size.width * 0.5,
                    text: 'Login',
                  ),
                ),
              );
            },
          ),
          kHeight,
        ]),
      ),
    );
  }
}
