import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvoiceCardItem extends StatelessWidget {
  const InvoiceCardItem({
    super.key,
    required this.size,
    required this.invoiceNum,
    required this.onTap,
  });

  final Size size;
  final String invoiceNum;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          shadowColor: kBlackColor,
          elevation: 2,
          child: SizedBox(
            width: size.width * 0.1,
            height: size.height * 0.08,
            child: Center(
              child: Text(
                invoiceNum,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
