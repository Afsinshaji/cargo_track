import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:flutter/material.dart';

class ScannerButton extends StatelessWidget {
  const ScannerButton({
    super.key,
    required this.onTap,
    required this.width,
    required this.text,
    this.changeColor = kBlueColor,
    this.backGroundColor = kBlueColor,
    this.textColor = kWhiteColor,
  });

  final double width;
  final Function onTap;
  final String text;
  final Color changeColor;
  final Color backGroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return changeColor;
            }
            return backGroundColor;
          }),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.qr_code,
              color: kWhiteColor,
            ),
            kWidth,
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
