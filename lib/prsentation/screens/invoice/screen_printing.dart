import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';

import 'package:printing/printing.dart';
import 'dart:io';
import 'package:pdf/widgets.dart' as pw;
import 'dart:typed_data';

class PrintingScreen extends StatelessWidget {
  const PrintingScreen({super.key, required this.barcodeImage, this.idBarcode});
  final File barcodeImage;
  final File? idBarcode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        scrollViewDecoration: const BoxDecoration(color: kBlackColor),
        build: (format) =>
            convertingSvgToPdf([barcodeImage.path, idBarcode!.path]),
      ),
    );
  }
}

Future<Uint8List> convertingSvgToPdf(List<String> svgPaths) async {
  final pdf = pw.Document();

  for (final svgPath in svgPaths) {
    final svgContent = await File(svgPath).readAsString();

    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.SvgImage(svg: svgContent);
      },
    ));
  }

  final pdfContent = await pdf.save();

  return Uint8List.fromList(pdfContent);
}
