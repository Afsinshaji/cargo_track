import 'package:cargo_track/application/riverpod/search/search.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchingBar extends ConsumerWidget {
  SearchingBar({
    super.key,
    required this.size,
  });
  final Size size;

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: size.height * 0.15,
      decoration: const BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          )),
      child: Column(
        children: [
          SizedBox(height: size.height*0.04,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Material(
              shadowColor: kBlackColor,
              elevation: 2,
              borderRadius: BorderRadius.circular(25),
              child: TextField(
                onChanged: (value) {
                  //    search(value);
                  search(value, ref);
                },
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
                    contentPadding: const EdgeInsets.only(left: 40, right: 20),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: IconButton(
                        onPressed: () async {
                          // await TripSheetApplication()
                          //     .getCargo(int.parse(searchController.text))
                          //     .then((tripSheet) {
                          //   log(tripSheet.toString());
                          //   Navigator.push(
                          //       context,
                          //       CupertinoPageRoute(
                          //         builder: (context) =>
                          //             TripSheetScreen(tripSheetList: tripSheet),
                          //       ));
                          // });
                        },
                        icon: const Icon(Icons.search),
                        color: kBlackColor,
                      ),
                    ),
                    hintText: 'Seach...',
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
          )
        ],
      ),
    );
  }
}
