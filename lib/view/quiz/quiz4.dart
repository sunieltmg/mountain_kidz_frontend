import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/provider/message_provider.dart';
import 'package:slide_countdown/slide_countdown.dart';


class Quiz4 extends StatelessWidget {
  const Quiz4({Key? key}) : super(key: key);
  static const defaultDuration = Duration(minutes: 5);
  static const defaultPadding =
      EdgeInsets.symmetric(horizontal: 10, vertical: 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      SlideCountdown(
                      duration: defaultDuration,
                      padding: defaultPadding,
                      slideDirection: SlideDirection.up,
                      icon: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.alarm,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Text('4/5'),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Which is the national color of Nepal ?',
                  style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            MessageProvider.errorMessage(
                                'Wrong', 'Your answer is wrong ');
                          },
                          child: Container(
                            child: const Center(
                                child: Text(
                              'Yellow',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            MessageProvider.errorMessage(
                                'Wrong', 'Your answer is wrong ');
                          },
                          child: Container(
                            child: const Center(
                                child: Text(
                              'Blue',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            MessageProvider.successMessage(
                                'Correct', 'You got 4 diamond ');
                          },
                          child: Container(
                            child: const Center(
                                child: Text(
                              'Crimson',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            MessageProvider.errorMessage(
                                'Wrong', 'Your answer is wrong ');
                          },
                          child: Container(
                            child: const Center(
                                child: Text(
                              'Green',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Get.isDarkMode
                            ? Colors.purple.shade100
                            : Colors.yellow.shade800,
                      ),
                      icon: Icon(Icons.arrow_back),
                      onPressed: () => Get.offNamed('/quiz3'),
                      label: const Text(
                        'Previous',
                      ),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Get.isDarkMode
                            ? Colors.purple.shade100
                            : Colors.green,
                      ),
                      icon: Icon(Icons.play_arrow),
                      onPressed: () => Get.offNamed('/quiz5'),
                      label: const Text(
                        'Next',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
