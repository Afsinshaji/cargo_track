import 'dart:developer';

import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/strings/strings.dart';
import 'package:cargo_track/domain/invoice/invoice/invoice.dart';
import 'package:cargo_track/prsentation/screens/add_cargo/add_cargo.dart';
import 'package:cargo_track/prsentation/screens/add_cargo/get_invoice.dart';
import 'package:flutter/material.dart';

import '../login/widget/logo_image_box.dart';
import 'package:cargo_track/core/constants/constants.dart';

class DaashBoardScreen extends StatefulWidget {
  const DaashBoardScreen({super.key});

  @override
  State<DaashBoardScreen> createState() => _DaashBoardScreenState();
}

class _DaashBoardScreenState extends State<DaashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kWhiteColor,
        body: SafeArea(
            child: Column(
          children: [
            Center(child: LogoImageBox(logoHeight: size.width * 0.3)),
            kHeight,
            Align(
              alignment: Alignment.centerRight,
              child: Image.network(truckImage),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: kBlueColor,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(30))),
              child: const Column(
                children: [StatusCard()],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddCargoPage(),
                  ));
                },
                child: Text('Get Invoice'))
          ],
        )));
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    );
  }
}
