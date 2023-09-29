import 'package:flutter/material.dart';
import 'package:cargo_track/core/strings/strings.dart';

class LogoImageBox extends StatelessWidget {
  const LogoImageBox(
      {super.key, required this.logoHeight, this.logimage = logoImage});
  final double logoHeight;
  final String logimage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: logoHeight, child: Center(child: Image.network(logimage)));
  }
}
