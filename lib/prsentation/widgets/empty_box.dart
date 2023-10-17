import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyBox extends StatelessWidget {
  const EmptyBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            'assets/images/isometric-illustration-concept-expedition-of-land-sea-and-air-free-vector-removebg-preview.png'),
        Text(
          'Empty',
          style: GoogleFonts.aldrich(
            textStyle: const TextStyle(
              letterSpacing: 2,
              fontSize: 35,
              color: kWhiteColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}
