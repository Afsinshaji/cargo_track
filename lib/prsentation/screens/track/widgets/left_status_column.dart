import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/prsentation/screens/track/widgets/track_indicator.dart';
import 'package:flutter/material.dart';

class LeftStatusColumn extends StatelessWidget {
  const LeftStatusColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const StatusText(text: 'Sending Date'),
        kHeight,
        const StatusText(text: '12/10/2022'),
        SizedBox(
          height: size.height * 0.14,
        ),
        const StatusIcon(
          iconData: Icons.location_city,
          iconColor: kGreenColor,
        ),
        SizedBox(
          height: size.height * 0.18,
        ),
        const StatusText(text: 'Out For Delivery'),
        kHeight,
        const StatusText(text: '12/10/2022'),
        SizedBox(
          height: size.height * 0.13,
        ),
        const StatusIcon(
          iconData: Icons.check_circle,
          iconColor: kBlueColor,
        ),
      ],
    );
  }
}
