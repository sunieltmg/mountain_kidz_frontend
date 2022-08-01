import 'dart:convert';
import "package:http/http.dart" as http;

class RegisterService {
  static var client = http.Client();

  // hanlde register
  Future<String> handleRegister(Map<String, String> data) async {
    String endpoint = "https://mountain-kidz.herokuapp.com/register";
    // String endpoint = "http://100.123.194.39:3000/register";

    try {
      final response = await client.post(Uri.parse(endpoint),
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
          },
          body: json.encode(data));
      if (response.statusCode == 201) {
        return 'success';
      } else if (response.statusCode == 409) {
        return 'user already exists';
      } else {
        return 'internal server error';
      }
    } catch (err) {
      return Future.error(err);
    }
  }
}
