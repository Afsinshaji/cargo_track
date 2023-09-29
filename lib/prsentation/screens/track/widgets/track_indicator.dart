import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackIndicator extends StatefulWidget {
  ///This variable is used to set status of order, this get only enum which is already in a package below example present.
  /// Status.order
  final Status? status;

  const TrackIndicator({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  State<TrackIndicator> createState() => _TrackIndicatorState();
}

class _TrackIndicatorState extends State<TrackIndicator>
    with TickerProviderStateMixin {
  ///This is first animation progress bar controller.
  AnimationController? controller;

  ///This is second animation progress bar controller.
  AnimationController? controller2;

  ///This is third animation progress bar controller.
  AnimationController? controller3;

  ///This is conditional variable.
  bool isFirst = false;
  bool isSecond = false;
  bool isThird = false;

  @override
  void initState() {
    if (widget.status?.name == Status.sendingDate.name) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
          }
          setState(() {});
        });
    } else if (widget.status?.name == Status.recievedatCalicut.name) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });
    } else if (widget.status?.name == Status.outforDelivery.name ||
        widget.status?.name == Status.delivered.name) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            controller3?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize third controller
      controller3 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller3?.value != null && controller3!.value > 0.99) {
            controller3?.stop();
            isThird = true;
          }
          setState(() {});
        });
    }

    controller?.repeat(reverse: false);
    controller2?.repeat(reverse: false);
    controller3?.repeat(reverse: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleContainer(
          color: Colors.green,
        ),
        LinerarTrackIndicator(
          controller: controller,
          color: Colors.green,
        ),
        CircleContainer(
          color: (widget.status?.name == Status.recievedatCalicut.name ||
                      widget.status?.name == Status.outforDelivery.name ||
                      widget.status?.name == Status.delivered.name) &&
                  isFirst == true
              //Afsin
              ? Colors.green
              : Colors.grey[300],
        ),
        LinerarTrackIndicator(
          controller: controller2,
          color: isFirst == true ? Colors.green : Colors.grey[300],
        ),
        CircleContainer(
          color: (widget.status?.name == Status.outforDelivery.name ||
                      widget.status?.name == Status.delivered.name) &&
                  isSecond == true
              //Afsin
              ? Colors.green
              : Colors.grey[300],
        ),
        LinerarTrackIndicator(
          controller: controller3,
          color: isSecond == true ? Colors.green : Colors.grey[300],
        ),
        CircleContainer(
          color: widget.status?.name == Status.delivered.name && isThird == true
              //Afsin
              ? Colors.green
              : Colors.grey[300],
        ),
      ],
    );
  }
}

class StatusIcon extends StatelessWidget {
  const StatusIcon({
    super.key,
    required this.iconData,
    required this.iconColor,
  });
  final IconData? iconData;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: iconColor.withOpacity(0.3)),
        child: Icon(
          iconData,
          size: 35,
          color: iconColor,
        ));
  }
}

class StatusText extends StatelessWidget {
  const StatusText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          letterSpacing: .5,
          fontSize: 18,
          color: kBlackColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class LinerarTrackIndicator extends StatelessWidget {
  const LinerarTrackIndicator({
    super.key,
    required this.controller,
    this.color,
  });

  final AnimationController? controller;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: SizedBox(
        width: 2,
        height: size.height * 0.2,
        child: RotatedBox(
          quarterTurns: 1,
          child: LinearProgressIndicator(
            value: controller?.value ?? 0.0,
            backgroundColor:
                //widget.inActiveColor ??//Afsin
                Colors.grey[300],
            color:
                //widget.activeColor ??//Afsin
                color,
          ),
        ),
      ),
    );
  }
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
    required this.color,
  });
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          color: color, //Afsin
          borderRadius: BorderRadius.circular(50)),
    );
  }
}

enum Status { sendingDate, recievedatCalicut, outforDelivery, delivered }
