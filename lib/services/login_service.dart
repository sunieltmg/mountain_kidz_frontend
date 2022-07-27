import 'package:get/get.dart';
import "package:http/http.dart" as http;

class LoginService {
  static var client = http.Client();

  // hanlde login
  Future hanleLogin(Map<String, String> data) async {
    String endpoint = "localhost:3000/register";

    try {
      final response = await client.post(Uri.parse(endpoint), body: data);
      print(response);

      return response;
    } catch (err) {
      return Future.error(err);
    }
  }
}
