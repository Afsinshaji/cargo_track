import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';

class ReportsSliverAppBar extends StatelessWidget {
  const ReportsSliverAppBar({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: SizedBox(
        height: size.height * 0.7,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.25,
              decoration: const BoxDecoration(
                  color: kBlueColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            Positioned(
              left: size.width * 0.05,
              top: size.height * 0.13,
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.5,
                decoration: BoxDecoration(
                    color: kWhiteColor.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
