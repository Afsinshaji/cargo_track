import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/prsentation/screens/invoice/screen_invoice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        // Lazy loading
      }
    });
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.17),
          child: const SearchBar(),
        ),
        body: SafeArea(
            child: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return InvoiceCardItem(size: size);
          },
        )));
  }
}

class InvoiceCardItem extends StatelessWidget {
  const InvoiceCardItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const InvoiceScreen(),
              ));
        },
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
                '101154345555',
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          )),
      child: Column(
        children: [
          kHeight30,
          Row(
            children: [
              kWidth20,
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: kWhiteColor,
                  )),
              kWidth50,
              Text(
                'Search Invoice',
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    letterSpacing: .3,
                    fontSize: 22,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Material(
              shadowColor: kBlackColor,
              elevation: 2,
              borderRadius: BorderRadius.circular(25),
              child: TextField(
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
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                        color: kBlackColor,
                      ),
                    ),
                    hintText: 'invoice...',
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
