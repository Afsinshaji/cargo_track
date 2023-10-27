import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void openDraggableBottomSheet({
  required BuildContext context,
  required Widget child,
  required DraggableScrollableController controller,
}) {
  OverlayState? overlayState = Overlay.of(context);
  OverlayEntry overlayEntry = OverlayEntry(
    builder: (context) {
      return DraggableScrollableSheet(
        controller: controller,
        shouldCloseOnMinExtent: true,
        initialChildSize: 0.3,
        minChildSize: 0,
        maxChildSize: 0.3,
        snapSizes: const [0, 0.3],
        snap: true,
        builder: (BuildContext context, ScrollController scrollController) {
          log(scrollController.position.toString());

          return SingleChildScrollView(
            controller: scrollController,
            child: child,
          );
        },
      );
    },
  );
  // inserting overlay entry
  overlayState.insert(overlayEntry);
}
