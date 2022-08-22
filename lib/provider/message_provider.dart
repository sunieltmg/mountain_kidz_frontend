import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageProvider {
  static successMessage(String title, String message) => Get.snackbar(
        title,
        message,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.green,
        colorText: Colors.white,
        animationDuration: const Duration(seconds: 1),
        dismissDirection: DismissDirection.horizontal,
        snackPosition: SnackPosition.TOP,
      );

  static errorMessage(String title, String message) => Get.snackbar(
        title,
        message,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        animationDuration: const Duration(seconds: 1),
        dismissDirection: DismissDirection.horizontal,
        snackPosition: SnackPosition.TOP,
      );
}
