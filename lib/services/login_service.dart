import 'dart:convert';

import "package:http/http.dart" as http;

class LoginService {
  static var client = http.Client();

  // hanlde login
  Future<String> hanleLogin(Map<String, String> data) async {
    String endpoint = "https://mountain-kidz.herokuapp.com/auth";
    // String endpoint = "http://100.123.194.39:3000/auth";

    try {
      final response = await client.post(Uri.parse(endpoint),
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
          },
          body: json.encode(data));

      if (response.statusCode == 200) {
        return 'Logged in successful';
      } else if (response.statusCode == 401) {
        return 'User doesnot exists';
      } else {
        return 'internal server error';
      }
    } catch (err) {
      return Future.error(err);
    }
  }
}
