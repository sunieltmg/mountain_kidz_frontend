import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import "package:http/http.dart" as http;

class EmailJsService {
  static var client = http.Client();

  // get all food
  Future addEmail(String receiverName, String receiverEmail, String subject,
      String message) async {
    String endpoint = 'https://api.emailjs.com/api/v1.0/email/send';
    try {
      final response = await client.post(Uri.parse(endpoint),
          headers: {
            'Origin': 'http://localhost',
            'Content-Type': 'application/json'
          },
          body: json.encode({
            'service_id': 'service_nuo7gcg',
            'template_id': 'template_4thpa8m',
            'user_id': 'mY7wvTwb3QGeFCBJa',
            'template_params': {
              "sender_name": 'Sunil Tamang',
              'sender_email': 'technicalnepal31@gmail.com',
              "receiver_name": receiverName,
              "receiver_email": receiverEmail,
              "user_subject": subject,
              "user_message": message,
            }
          }));

      if (response.statusCode == 200) {
        return Get.snackbar(
          "Success",
          "Email sent successfully ",
          icon: const Icon(Icons.no_meals, color: Colors.white),
          duration: const Duration(seconds: 3),
          backgroundColor: Colors.green,
          colorText: Colors.white,
          animationDuration: const Duration(seconds: 1),
          dismissDirection: DismissDirection.horizontal,
          snackPosition: SnackPosition.TOP,
        );

        // return 'Email send successfully';
      }
      if (response.statusCode == 400) {
        return Future.error('The user_id parameter is required');
      }
    } catch (err) {
      return Future.error(' Error fetching data $err');
    }
  }
}
