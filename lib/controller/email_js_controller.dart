import 'package:get/get.dart';
import '../services/email_js_service.dart';

class EmailJsController extends GetxController {
  EmailJsService emailJsService = Get.put(EmailJsService());

  // Add Email
  addEmail(String receiverName, String receiverEmail, String subject,
      String message) {
    var response =
        emailJsService.addEmail(receiverName, receiverEmail, subject, message);
    return response;
  }
}
