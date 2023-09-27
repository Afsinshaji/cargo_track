import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';

class CirclePopUpButton extends StatelessWidget {
  const CirclePopUpButton({
    super.key,
    this.iconSize = 28,
    this.leftPadding = 4,
    this.radius=20,
  });
  final double iconSize;
  final double leftPadding;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: kWhiteColor,
      child: Padding(
        padding: EdgeInsets.only(left: leftPadding),
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: kBlackColor,
              size: iconSize,
            )),
      ),
    );
  }
}
