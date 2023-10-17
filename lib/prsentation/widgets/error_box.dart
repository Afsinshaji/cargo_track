import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorBox extends StatelessWidget {
  const ErrorBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
              'assets/images/istockphoto-1138194127-612x612-removebg-preview.png'),
          Text(
            'Please Try Again',
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
      ),
    );
  }
}
