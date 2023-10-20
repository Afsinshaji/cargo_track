import 'package:cargo_track/application/track/track_bloc.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/core/constants/constants.dart';
import 'package:cargo_track/domain/track/models/datum.dart';
import 'package:cargo_track/prsentation/screens/track/screen_tracking_cargo.dart';
import 'package:cargo_track/prsentation/screens/track/widgets/left_status_column.dart';
import 'package:cargo_track/prsentation/screens/track/widgets/track_indicator.dart';
import 'package:cargo_track/prsentation/widgets/empty_box.dart';
import 'package:cargo_track/prsentation/widgets/four_rotating_drop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/right_status_column.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<TrackBloc, TrackState>(
        builder: (context, state) {
          List<StatusData> cargoList = [];
          if (state is displayStatus) {
            if (state.isLoading) {
              return const Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Center(
                      child: FourRotatingDots(color: kBlackColor, size: 100)));
            }
            cargoList = state.cargoList;
          }
          if (cargoList.isEmpty) {
            return Column(
              children: [
                SizedBox(height: size.height*0.3,),
                const Center(
                  child: EmptyBox(),
                ),
              ],
            );
          }
          if (cargoList.length == 1) {
            return StatusWidget(
              size: size,
              statusData: cargoList[0],
            );
          } else {
            return TrackingCargoScreen(
              cargoList: cargoList,
            );
          }
        },
      ),
    );
  }
}

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
    required this.size,
    required this.statusData,
  });

  final Size size;
  final StatusData statusData;

  @override
  Widget build(BuildContext context) {
    bool isdelivered = false;
    String status = '';
    final statusNum = statusData.status ??= -1;
    switch (statusNum) {
      case 0:
        status = 'On the Way';
        break;
      case 1:
        status = 'Out for Delivery';
        break;
      case 2:
        status = 'In Transit';
        break;
      case 3:
        status = 'Delivered';
        break;
      case 4:
        status = 'Pending';
        break;
      case 5:
        status = 'Not Delivered';
        break;
    }
    Status statusIndicator = Status.recievedatCalicut;
    if (status.isNotEmpty) {
      statusIndicator = Status.outforDelivery;
      if (status == 'Delivered') {
        isdelivered = true;
        statusIndicator = Status.delivered;
        status = 'Out for Delivery';
      }
    }

    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            decoration: const BoxDecoration(
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight20,
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Cargo Status',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 20,
                        color: kBlackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                kHeight30,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LeftStatusColumn(
                        sendDate: statusData.sendingdate ??= '',
                        status: status,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.025),
                        child: TrackIndicator(status: statusIndicator),
                      ),
                      RightStatusColumn(
                        recieveDate: statusData.recievingdate ??= '',
                        isDelivered: isdelivered,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
