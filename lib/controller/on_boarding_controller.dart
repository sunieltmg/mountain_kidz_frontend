import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/on_boarding.dart';


class OnBoardingController extends GetxController {
  var selectedIndex = 0.obs;
  var pageController = PageController();

  forwardAction() {
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnBoarding> onBoardingPages = [
    OnBoarding(
      image: 'assets/images/qrCode.json',
      title: 'Qr Code Order',
      description:
          'Customers read a QR Code from their table and order food & drink from their phones.',
    ),
    OnBoarding(
      image: 'assets/images/food.json',
      title: 'Healthy & Delicious Food',
      description:
          "Tuck into healthy recipes that you can make in under 30 minutes. We've got plenty of quick and tasty salads, soups and mains to leave you feeling nourished.",
    ),
    OnBoarding(
      image: 'assets/images/esewa.json',
      title: 'Pay with Esewa',
      description: 'You can pay for your ordered food online using eSewa.',
    ),
  ];

  
}
