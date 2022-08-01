import 'package:get/get.dart';
import 'package:mountain_kidz_app/services/register_service.dart';

class RegisterController extends GetxController {
  RegisterService registerService = Get.put(RegisterService());
  // Login into dashboard
  handleRegister(Map<String, String> data) async {
    var response = await registerService.handleRegister(data);
    print(response);
    return response;
  }
}
