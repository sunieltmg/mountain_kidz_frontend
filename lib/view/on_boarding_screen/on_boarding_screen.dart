import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mountain_kidz_app/controller/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final OnBoardingController onBoardingController =
      Get.put(OnBoardingController());

  List data = [
    {
      "image": "assets/course.json",
      "title": "Effective Courses",
      "description":
          "Course is defined as a specific path that something follows or the way in which something develops."
    },
    {
      "image": "assets/attendance.json",
      "title": "Online Attendance",
      "description":
          "Attendance is the concept of people, individually or as a group, appearing at a location for a previously scheduled event."
    },
    {
      "image": "assets/books.json",
      "title": "E-Homeworks",
      "description":
          "Homework is the time students spend outside the classroom in assigned activities to practice, reinforce or apply newly-acquired skills and knowledge and to learn necessary skills of independent study."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
            controller: onBoardingController.pageController,
            onPageChanged: onBoardingController.selectedIndex,
            itemBuilder: ((context, index) {
              return Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 400,
                            child: Lottie.asset(
                              data[index]['image'],
                              height: 300,
                              width: 300,
                              animate: true,
                              repeat: true,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(data[index]['title'].toString(),
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            wordSpacing: 0.3,
                            height: 1.5,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                        ),
                        child: Text(
                          data[index]['description'].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.1,
                            wordSpacing: 0.5,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }),
            itemCount: data.length,
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: List.generate(
                onBoardingController.onBoardingPages.length,
                (index) => Obx(() {
                  return Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: onBoardingController.selectedIndex.value == index
                          ? Colors.black
                          : Colors.grey,
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
                backgroundColor: Theme.of(context).iconTheme.color,
                child: Obx(() {
                  return Text(
                      onBoardingController.selectedIndex.value ==
                              onBoardingController.onBoardingPages.length - 1
                          ? "Start"
                          : "Next",
                      style: Theme.of(context).textTheme.labelLarge);
                }),
                onPressed: () {
                  if (onBoardingController.selectedIndex.value ==
                      onBoardingController.onBoardingPages.length - 1) {
                    Get.offNamed('/userDashboard');
                  } else {
                    onBoardingController.forwardAction();
                  }
                }),
          )
        ],
      )),
    );
  }
}
