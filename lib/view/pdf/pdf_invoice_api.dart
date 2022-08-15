import 'dart:io';
import 'package:open_file/open_file.dart';

class PdfInvoiceApi {
  Future generate(String invoice) async {
    return 'hello';
  }

  static Future openFile(File file) async {
    final url = file.path;
    await OpenFile.open(url);
  }
}
