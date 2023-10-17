import 'package:cargo_track/core/colors/colors.dart';

import 'package:flutter/material.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class InvoiceField extends StatelessWidget {
  InvoiceField({
    super.key,
    required this.size,
  });
  final Size size;

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.06,
      decoration: const BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
        child: Material(
          shadowColor: kBlackColor,
          elevation: 2,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: TextField(
            onChanged: (value) {},
            controller: searchController,
            keyboardType: TextInputType.number,
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                letterSpacing: .3,
                fontSize: 15,
                color: kBlackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            cursorColor: kBlackColor,
            cursorWidth: 1,
            cursorHeight: 20,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20, right: 0),
                hintText: 'Invoice...',
                hintStyle: TextStyle(
                  color: kBlackColor.withOpacity(0.4),
                ),
                filled: true,
                fillColor: kWhiteColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                )),
          ),
        ),
      ),
    );
  }
}
