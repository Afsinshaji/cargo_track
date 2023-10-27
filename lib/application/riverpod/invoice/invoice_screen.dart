import 'package:flutter_riverpod/flutter_riverpod.dart';

final generateBarcodeProvider = StateProvider(
  (ref) {
    return false;
  },
);
final reWeightField = StateProvider(
  (ref) {
    return false;
  },
);
final reWeightValueChanger = StateProvider((ref) {
  return 0.0;
});

isGenerateBarcode(bool isBarcodeGenerate, WidgetRef ref) {
  ref.read(generateBarcodeProvider.notifier).state = isBarcodeGenerate;
}
