import 'package:flutter_riverpod/flutter_riverpod.dart';

final cargoListLengthProvider = StateProvider(
  (ref) {
    return 0;
  },
);
takeListLength(int length, WidgetRef ref) {
  ref.read(cargoListLengthProvider.notifier).state = length;
}
