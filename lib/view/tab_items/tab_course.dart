import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/course_controller.dart';

class TabCourse extends StatelessWidget {
  TabCourse({Key? key}) : super(key: key);

  CourseController courseController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 30,
      ),
      child: Obx(
        () => GridView.builder(
          itemCount: courseController.courseList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1 / 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => Get.offNamed('/courseDetail', arguments: [
                      {"title": courseController.courseList[index].title},
                      {
                        "description":
                            courseController.courseList[index].description
                      },
                      {"image": courseController.courseList[index].image},
                      {"id": courseController.courseList[index].id},
                    ]),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.09),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              courseController.courseList[index].image,
                            ),
                          ),
                          color: Get.isDarkMode
                              ? Colors.black12
                              : Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Text(
                  courseController.courseList[index].title,
                  style: Theme.of(context).primaryTextTheme.labelMedium,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
