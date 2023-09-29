import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/prsentation/screens/track/widgets/track_indicator.dart';
import 'package:flutter/material.dart';

class RightStatusColumn extends StatelessWidget {
  const RightStatusColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const StatusIcon(
          iconData: Icons.event,
          iconColor: kRedColor,
        ),
        SizedBox(
          height: size.height * 0.17,
        ),
        const StatusText(text: 'Recieved At Calicut'),
        kHeight,
        const StatusText(text: '12/10/2022'),
        SizedBox(
          height: size.height * 0.14,
        ),
        const StatusIcon(
          iconData: Icons.local_shipping,
          iconColor: kBlackColor,
        ),
        SizedBox(
          height: size.height * 0.15,
        ),
        const StatusText(text: 'Delivered'),
        kHeight,
        const StatusText(text: '12/10/2022'),
      ],
    );
  }
}
