// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:mountain_kidz_app/view/pdf/pdf_invoice_api.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;

// class ViewInvoice extends StatelessWidget {
//   ViewInvoice({Key? key}) : super(key: key);

//   //         pageFormat: PdfPageFormat.a4,
//   //         build: (pw.Context context) {
//   //           return pw.Center(
//   //             child: pw.Text("Hello World"),
//   //           ); // Center
//   //         })); // Page

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Invoice'),
//       ),
//       body: SafeArea(
//           child: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               ElevatedButton(
//                   onPressed: () async {
//                     final date = DateTime.now();
//                     final dueDate = date.add(Duration(days: 7));
//                     final invoice = Invoice(
//                         supplierName: Supplier(
//                           name: 'Sunil Tamang',
//                           gender: 'male',
//                           address: 'Nagarkot',
//                         ),
//                         customer: Customer(
//                           name: 'Sunil Tamang',
//                           gender: 'male',
//                           address: 'Nagarkot',
//                         ),
//                         info: InvoiceInfo(
//                           date: date,
//                           dueDate: dueDate,
//                           descrition: 'description',
//                           number: '${DateTime.now().year} -999}',
//                         ),
//                         items: [
//                           InvoiceItem(
//                             description: 'Coffee',
//                             date: DateTime.now(),
//                             quantity: 1,
//                             vat: 0.19,
//                             unitPrice: 99.0,
//                           ),
//                           InvoiceItem(
//                             description: 'Chowmein',
//                             date: DateTime.now(),
//                             quantity: 1.5,
//                             vat: 0.19,
//                             unitPrice: 100.0,
//                           ),
//                           InvoiceItem(
//                             description: 'Momo',
//                             date: DateTime.now(),
//                             quantity: 1,
//                             vat: 0.19,
//                             unitPrice: 120.0,
//                           ),
//                         ]);
//                     final pdfFile = await PdfInvoiceApi().generate('invoice');

//                     PdfInvoiceApi.openFile(pdfFile);
//                   },
//                   child: Text('Generate Pdf'))
//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }

// class InvoiceItem {
//     InvoiceItem(
//       {Key? key}) : super(key: key)
//     required String description,
//                             required DateTime date,
//                             required double quantity,
//                             required double vat,
//                             required double unitPrice

//     ) {
//       final String description;
//       final DateTime date;
//       final Double quantity;
//       final Double vat;
//       final Double unitPrice;
//     }
// }

// class InvoiceInfo {
// }

// class Customer {
// }

// class Supplier {
// }

// class Invoice {
// }
