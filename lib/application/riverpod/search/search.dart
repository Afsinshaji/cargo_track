import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = StateProvider(
  (ref) {
    return '';
  },
);
search(String searching, WidgetRef ref) {
  log('search riverpod');
  ref.read(searchProvider.notifier).state = searching;
}
