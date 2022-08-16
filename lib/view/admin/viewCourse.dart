import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/course_controller.dart';

class ViewCourse extends StatelessWidget {
  ViewCourse({Key? key}) : super(key: key);

  CourseController courseController = Get.find();

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 30,
            top: 30,
          ),
          child: Text(
            'Course',
            style: Theme.of(context).primaryTextTheme.titleLarge,
          ),
        ),

        // search bar
        Container(
          margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.03),
          ),
          child: TextFormField(
            style: TextStyle(
                color: Get.isDarkMode
                    ? Colors.white.withOpacity(0.5)
                    : Colors.black),
            controller: searchController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Get.isDarkMode
                  ? Colors.white.withOpacity(0.08)
                  : Colors.black.withOpacity(0.02),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              hintText: 'Search',
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Get.isDarkMode
                      ? Colors.white.withOpacity(0.8)
                      : Colors.black26,
                ),
                onPressed: () => courseController.searchCourse(),
              ),
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
        ),

        // course list
        Container(
          padding: EdgeInsets.only(bottom: 50),
          margin: EdgeInsets.only(bottom: 50),
          height: 500,
          child: Obx(
            () => ListView.builder(
              itemCount: courseController.courseList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 355,
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 5,
                    right: 5,
                    bottom: 8,
                  ),
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 40, right: 40),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                        color: Get.isDarkMode
                            ? Color(0xFF323634).withOpacity(0.32)
                            : Color(0xFFf5faf6).withOpacity(0.32),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        width: 250,
                        height: 200,
                        fit: BoxFit.cover,
                        imageUrl: courseController.courseList[index].image,
                        placeholder: (context, url) => ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/loading.gif',
                              )),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              courseController.courseList[index].title,
                              style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13.0,
                                height: 1.3,
                                letterSpacing: 0.8,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Get.toNamed('/updateCourse', arguments: [
                                  {
                                    "title":
                                        courseController.courseList[index].title
                                  },
                                  {
                                    "description": courseController
                                        .courseList[index].description
                                  },
                                  {
                                    "image":
                                        courseController.courseList[index].image
                                  },
                                  {"id": courseController.courseList[index].id},
                                ]);
                              },
                              icon: Icon(Icons.edit),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        courseController.courseList[index].description,
                        style: TextStyle(
                          color:
                              Get.isDarkMode ? Colors.white60 : Colors.black54,
                          fontSize: 13.0,
                          height: 1.3,
                          letterSpacing: 0.8,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
