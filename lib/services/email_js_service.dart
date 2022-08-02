import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import "package:http/http.dart" as http;
import 'package:mountain_kidz_app/provider/message_provider.dart';

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
        return MessageProvider.successMessage(
            'Success', 'Email send successful.');

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
