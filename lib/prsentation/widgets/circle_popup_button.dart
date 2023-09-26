import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';

class CirclePopUpButton extends StatelessWidget {
  const CirclePopUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kWhiteColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kBlackColor,
              size: 28,
            )),
      ),
    );
  }
}
