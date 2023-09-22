import 'package:flutter/material.dart';
import 'package:cargo_track/core/strings/strings.dart';
class LogoImageBox extends StatelessWidget {
  const LogoImageBox({
    super.key,
    required this.screenWidth,
  });
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: screenWidth * 0.3,
        child: Center(child: Image.network(logoImage)));
  }
}