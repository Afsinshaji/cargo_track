import 'dart:async';
import 'dart:developer';
import 'package:mysql1/mysql1.dart';

Future<void> fetchInvoiceData(String invoiceNumber) async {
  final settings = ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'u243171548_cargouser',
    password: 'b@4Fq0\$O',
    db: 'u243171548_cargotrack',
  );

  final MySqlConnection connection = await MySqlConnection.connect(settings);

  try {
    final results = await connection.query(
      "SELECT goods_details.invoiceno,goods_details.district, goods_details.company, goods_details.weight, goods_details.pcs, goods_details.sendingdate,goods_details.reciever_address, goods_details.recievingdate FROM goods_details WHERE goods_details.invoiceno = ?",
      [invoiceNumber],
    );

    if (results.isNotEmpty) {
      for (var row in results) {
        final invoiceno = row['invoiceno'];
        final district = row['district'];
        final company = row['company'];
        final weight = row['weight'];
        final pcs = row['pcs'];
        final sendingdate = row['sendingdate'];
        final recieverAddress = row['reciever_address'];
        final recievingdate = row['recievingdate'];

        // Process the data here, e.g., print it
        log('Invoice Number: $invoiceno');
        log('District: $district');
        log('Company: $company');
        log('Weight: $weight');
        log('Pcs: $pcs');
        log('Sending Date: $sendingdate');
        log('Receiver Address: $recieverAddress');
        log('Receiving Date: $recievingdate');
      }
    } else {
      log('No records matching your query were found.');
    }
  } catch (e) {
    log('Error: $e');
  } finally {
    await connection.close();
  }
}

void main() {
  final invoiceNumber = 'your_invoice_number';
  fetchInvoiceData(invoiceNumber);
}
