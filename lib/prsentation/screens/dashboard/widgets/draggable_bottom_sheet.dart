import 'package:flutter/material.dart';

void openDraggableBottomSheet(
    {required BuildContext context, required Widget child}) {
  OverlayState? overlayState = Overlay.of(context);
  OverlayEntry overlayEntry = OverlayEntry(
    builder: (context) {
      return DraggableScrollableSheet(
        shouldCloseOnMinExtent: true,
        initialChildSize: 0.50,
        minChildSize: 0,
        maxChildSize: 1,
        snapSizes: const [0.50, 1],
        snap: true,
        builder: (BuildContext context, ScrollController scrollController) {
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
