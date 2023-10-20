import 'package:cargo_track/application/track/track_bloc.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:cargo_track/domain/track/models/datum.dart';
import 'package:cargo_track/prsentation/screens/track/screen_track.dart';
import 'package:cargo_track/prsentation/screens/track/screen_tracking_cargo.dart';
import 'package:cargo_track/prsentation/widgets/four_rotating_drop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void openDraggableBottomSheet({
  required BuildContext context,
  required Widget child,
  required DraggableScrollableController controller,
}) {
  OverlayState? overlayState = Overlay.of(context);
  OverlayEntry overlayEntry = OverlayEntry(
    builder: (context) {
      return BlocBuilder<TrackBloc, TrackState>(
        builder: (context, state) {
           List<StatusData> cargoList = [];
                    if (state is displayStatus) {
                      if (state.isLoading) {
                        return const SizedBox();
                      }
                      cargoList = state.cargoList;
                     
                    }
          return DraggableScrollableSheet(
            controller: controller,
            shouldCloseOnMinExtent: true,
            initialChildSize: 0.50,
            minChildSize: 0,
            maxChildSize: 1,
            snapSizes: const [0.50, 1],
            snap: true,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: BlocBuilder<TrackBloc, TrackState>(
                  builder: (context, state) {
                   

                    return cargoList.length == 1
                        ? const TrackScreen()
                        : SizedBox();
                  },
                ),
              );
            },
          );
        },
      );
    },
  );
  // inserting overlay entry
  overlayState.insert(overlayEntry);
}
