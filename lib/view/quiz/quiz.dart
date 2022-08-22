import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary:
                      Get.isDarkMode ? Colors.purple.shade100 : Colors.green,
                ),
                icon: Icon(Icons.play_arrow),
                onPressed: () => Get.toNamed('/quiz1'),
                label: const Text(
                  'Play Quiz',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  primary:
                      Get.isDarkMode ? Colors.purple.shade100 : Colors.green,
                ),
                icon: Icon(Icons.person),
                onPressed: () => Get.toNamed('/leaderboard'),
                label: const Text(
                  'View Leaderboard',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
