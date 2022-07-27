import 'package:get/get.dart';
import 'package:mountain_kidz_app/services/login_service.dart';

class LoginController extends GetxController {
  LoginService loginService = Get.put(LoginService());
  // Login into dashboard
  handleLogin(Map<String, String> data) {
    var response = loginService.hanleLogin(data);
    return response;
  }
}
