// import 'package:cargo_track/core/strings/strings.dart';
// import 'package:flutter/material.dart';

// class MealsListView extends StatefulWidget {
//   const MealsListView(
//       {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
//       : super(key: key);

//   final AnimationController? mainScreenAnimationController;
//   final Animation<double>? mainScreenAnimation;

//   @override
//   _MealsListViewState createState() => _MealsListViewState();
// }

// class _MealsListViewState extends State<MealsListView>
//     with TickerProviderStateMixin {
//   AnimationController? animationController;
//   List<MealsListData> mealsListData = MealsListData.tabIconsList;

//   @override
//   void initState() {
//     animationController = AnimationController(
//         duration: const Duration(milliseconds: 2000), vsync: this);
//     super.initState();
//   }

//   Future<bool> getData() async {
//     await Future<dynamic>.delayed(const Duration(milliseconds: 50));
//     return true;
//   }

//   @override
//   void dispose() {
//     animationController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: widget.mainScreenAnimationController!,
//       builder: (BuildContext context, Widget? child) {
//         return FadeTransition(
//           opacity: widget.mainScreenAnimation!,
//           child: Transform(
//             transform: Matrix4.translationValues(
//                 0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
//             child: Container(
//               height: 216,
//               width: double.infinity,
//               child: ListView.builder(
//                 padding: const EdgeInsets.only(
//                     top: 0, bottom: 0, right: 16, left: 16),
//                 itemCount: mealsListData.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (BuildContext context, int index) {
//                   final int count =
//                       mealsListData.length > 10 ? 10 : mealsListData.length;
//                   final Animation<double> animation =
//                       Tween<double>(begin: 0.0, end: 1.0).animate(
//                           CurvedAnimation(
//                               parent: animationController!,
//                               curve: Interval((1 / count) * index, 1.0,
//                                   curve: Curves.fastOutSlowIn)));
//                   animationController?.forward();

//                   return MealsView(
//                     mealsListData: mealsListData[index],
//                     animation: animation,
//                     animationController: animationController!,
//                   );
//                 },
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class MealsView extends StatelessWidget {
//   const MealsView(
//       {Key? key, this.mealsListData, this.animationController, this.animation})
//       : super(key: key);

//   final MealsListData? mealsListData;
//   final AnimationController? animationController;
//   final Animation<double>? animation;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: animationController!,
//       builder: (BuildContext context, Widget? child) {
//         return FadeTransition(
//           opacity: animation!,
//           child: Transform(
//             transform: Matrix4.translationValues(
//                 100 * (1.0 - animation!.value), 0.0, 0.0),
//             child: SizedBox(
//               width: 130,
//               child: Stack(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: 32, left: 8, right: 8, bottom: 16),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         boxShadow: <BoxShadow>[
//                           BoxShadow(
//                               color: HexColor(mealsListData!.endColor)
//                                   .withOpacity(0.6),
//                               offset: const Offset(1.1, 4.0),
//                               blurRadius: 8.0),
//                         ],
//                         gradient: LinearGradient(
//                           colors: <HexColor>[
//                             HexColor(mealsListData!.startColor),
//                             HexColor(mealsListData!.endColor),
//                           ],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                         borderRadius: const BorderRadius.only(
//                           bottomRight: Radius.circular(8.0),
//                           bottomLeft: Radius.circular(8.0),
//                           topLeft: Radius.circular(8.0),
//                           topRight: Radius.circular(54.0),
//                         ),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                             top: 54, left: 16, right: 16, bottom: 8),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Text(
//                               mealsListData!.titleTxt,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontFamily: FitnessAppTheme.fontName,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 letterSpacing: 0.2,
//                                 color: FitnessAppTheme.white,
//                               ),
//                             ),
//                             Expanded(
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 8, bottom: 8),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Text(
//                                       mealsListData!.meals!.join('\n'),
//                                       style: TextStyle(
//                                         fontFamily: FitnessAppTheme.fontName,
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 10,
//                                         letterSpacing: 0.2,
//                                         color: FitnessAppTheme.white,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             mealsListData?.kacl != 0
//                                 ? Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     children: <Widget>[
//                                       Text(
//                                         mealsListData!.kacl.toString(),
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           fontFamily: FitnessAppTheme.fontName,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 24,
//                                           letterSpacing: 0.2,
//                                           color: FitnessAppTheme.white,
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(
//                                             left: 4, bottom: 3),
//                                         child: Text(
//                                           'kcal',
//                                           style: TextStyle(
//                                             fontFamily:
//                                                 FitnessAppTheme.fontName,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 10,
//                                             letterSpacing: 0.2,
//                                             color: FitnessAppTheme.white,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   )
//                                 : Container(
//                                     decoration: BoxDecoration(
//                                       color: FitnessAppTheme.nearlyWhite,
//                                       shape: BoxShape.circle,
//                                       boxShadow: <BoxShadow>[
//                                         BoxShadow(
//                                             color: FitnessAppTheme.nearlyBlack
//                                                 .withOpacity(0.4),
//                                             offset: Offset(8.0, 8.0),
//                                             blurRadius: 8.0),
//                                       ],
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(6.0),
//                                       child: Icon(
//                                         Icons.add,
//                                         color:
//                                             HexColor(mealsListData!.endColor),
//                                         size: 24,
//                                       ),
//                                     ),
//                                   ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 0,
//                     left: 0,
//                     child: Container(
//                       width: 84,
//                       height: 84,
//                       decoration: BoxDecoration(
//                         color: FitnessAppTheme.nearlyWhite.withOpacity(0.2),
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 0,
//                     left: 8,
//                     child: SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Image.network(
//                           'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// /////For some what else
// class MealsListData {
//   MealsListData({
//     this.imagePath = '',
//     this.titleTxt = '',
//     this.startColor = '',
//     this.endColor = '',
//     this.meals,
//     this.kacl = 0,
//   });

//   String imagePath;
//   String titleTxt;
//   String startColor;
//   String endColor;
//   List<String>? meals;
//   int kacl;

//   static List<MealsListData> tabIconsList = <MealsListData>[
//     MealsListData(
//       imagePath: 'assets/fitness_app/breakfast.png',
//       titleTxt: 'Breakfast',
//       kacl: 525,
//       meals: <String>['Bread,', 'Peanut butter,', 'Apple'],
//       startColor: '#FA7D82',
//       endColor: '#FFB295',
//     ),
//     MealsListData(
//       imagePath: '',
//       titleTxt: 'Lunch',
//       kacl: 602,
//       meals: <String>['Salmon,', 'Mixed veggies,', 'Avocado'],
//       startColor: '#738AE6',
//       endColor: '#5C5EDD',
//     ),
//     MealsListData(
//       imagePath: 'assets/fitness_app/snack.png',
//       titleTxt: 'Snack',
//       kacl: 0,
//       meals: <String>['Recommend:', '800 kcal'],
//       startColor: '#FE95B6',
//       endColor: '#FF5287',
//     ),
//     MealsListData(
//       imagePath: 'assets/fitness_app/dinner.png',
//       titleTxt: 'Dinner',
//       kacl: 0,
//       meals: <String>['Recommend:', '703 kcal'],
//       startColor: '#6F72CA',
//       endColor: '#1E1466',
//     ),
//   ];
// }

// // App Theme

// class FitnessAppTheme {
//   FitnessAppTheme._();
//   static const Color nearlyWhite = Color(0xFFFAFAFA);
//   static const Color white = Color(0xFFFFFFFF);
//   static const Color background = Color(0xFFF2F3F8);
//   static const Color nearlyDarkBlue = Color(0xFF2633C5);

//   static const Color nearlyBlue = Color(0xFF00B6F0);
//   static const Color nearlyBlack = Color(0xFF213333);
//   static const Color grey = Color(0xFF3A5160);
//   static const Color dark_grey = Color(0xFF313A44);

//   static const Color darkText = Color(0xFF253840);
//   static const Color darkerText = Color(0xFF17262A);
//   static const Color lightText = Color(0xFF4A6572);
//   static const Color deactivatedText = Color(0xFF767676);
//   static const Color dismissibleBackground = Color(0xFF364A54);
//   static const Color spacer = Color(0xFFF2F2F2);
//   static const String fontName = 'Roboto';

//   static const TextTheme textTheme = TextTheme(
//     headline4: display1,
//     headline5: headline,
//     headline6: title,
//     subtitle2: subtitle,
//     bodyText2: body2,
//     bodyText1: body1,
//     caption: caption,
//   );

//   static const TextStyle display1 = TextStyle(
//     fontFamily: fontName,
//     fontWeight: FontWeight.bold,
//     fontSize: 36,
//     letterSpacing: 0.4,
//     height: 0.9,
//     color: darkerText,
//   );

//   static const TextStyle headline = TextStyle(
//     fontFamily: fontName,
//     fontWeight: FontWeight.bold,
//     fontSize: 24,
//     letterSpacing: 0.27,
//     color: darkerText,
//   );

//   static const TextStyle title = TextStyle(
//     fontFamily: fontName,
//     fontWeight: FontWeight.bold,
//     fontSize: 16,
//     letterSpacing: 0.18,
//     color: darkerText,
//   );

//   static const TextStyle subtitle = TextStyle(
//     fontFamily: fontName,
//     fontWeight: FontWeight.w400,
//     fontSize: 14,
//     letterSpacing: -0.04,
//     color: darkText,
//   );

//   static const TextStyle body2 = TextStyle(
//     fontFamily: fontName,
//     fontWeight: FontWeight.w400,
//     fontSize: 14,
//     letterSpacing: 0.2,
//     color: darkText,
//   );

//   static const TextStyle body1 = TextStyle(
//     fontFamily: fontName,
//     fontWeight: FontWeight.w400,
//     fontSize: 16,
//     letterSpacing: -0.05,
//     color: darkText,
//   );

//   static const TextStyle caption = TextStyle(
//     fontFamily: fontName,
//     fontWeight: FontWeight.w400,
//     fontSize: 12,
//     letterSpacing: 0.2,
//     color: lightText, // was lightText
//   );
// }

// class HexColor extends Color {
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll('#', '');
//     if (hexColor.length == 6) {
//       hexColor = 'FF' + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }
// }

import 'package:flutter/material.dart';

class MealsListView extends StatefulWidget {
  const MealsListView({
    Key? key,
    this.mainScreenAnimationController,
    this.mainScreenAnimation,
  }) : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  _MealsListViewState createState() => _MealsListViewState();
}

class _MealsListViewState extends State<MealsListView>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  List<MealsListData> mealsListData = MealsListData.tabIconsList;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    if (widget.mainScreenAnimationController != null) {
      widget.mainScreenAnimationController!.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          // Start the list view animation when the mainScreenAnimation completes.
          startListViewAnimation();
        }
      });
    }
  }

  void startListViewAnimation() async {
    for (int i = 0; i < mealsListData.length; i++) {
      await Future.delayed(
        const Duration(milliseconds: 200),
      );
      animationController.forward();
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: widget.mainScreenAnimation!,
          child: Transform(
            transform: Matrix4.translationValues(
              0.0,
              30 * (1.0 - widget.mainScreenAnimation!.value),
              0.0,
            ),
            child: Container(
              height: 216,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  top: 0,
                  bottom: 0,
                  right: 16,
                  left: 16,
                ),
                itemCount: mealsListData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final MealsListData meal = mealsListData[index];
                  return MealsView(
                    mealsListData: meal,
                    animation: animationController,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class MealsView extends StatelessWidget {
  const MealsView({
    Key? key,
    this.mealsListData,
    this.animation,
  }) : super(key: key);

  final MealsListData? mealsListData;
  final AnimationController? animation;

  @override
  Widget build(BuildContext context) {
    final Animation<double> mealAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animation!,
        curve: Interval(0.1, 1.0),
      ),
    );

    animation!.forward();

    return FadeTransition(
      opacity: mealAnimation,
      child: Transform(
        transform: Matrix4.translationValues(
          100 * (1.0 - mealAnimation.value),
          0.0,
          0.0,
        ),
        child: SizedBox(
          width: 130,
          child: Stack(
            children: <Widget>[
              // ...Rest of your widget tree
            ],
          ),
        ),
      ),
    );
  }
}

class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Breakfast',
      kacl: 525,
      meals: <String>['Bread,', 'Peanut butter,', 'Apple'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: '',
      titleTxt: 'Lunch',
      kacl: 602,
      meals: <String>['Salmon,', 'Mixed veggies,', 'Avocado'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/snack.png',
      titleTxt: 'Snack',
      kacl: 0,
      meals: <String>['Recommend:', '800 kcal'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/dinner.png',
      titleTxt: 'Dinner',
      kacl: 0,
      meals: <String>['Recommend:', '703 kcal'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}
