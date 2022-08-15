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
          padding: const EdgeInsets.only(
            left: 10,
          ),
          margin: EdgeInsets.only(
              bottom: searchController.text.isEmpty ? 0 : 10,
              left: 20,
              right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.03),
          ),
          child: TextFormField(
            controller: searchController,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              hintText: 'Search',
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black26,
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
        SizedBox(
          height: 400,
          child: Obx(
            () => ListView.builder(
              itemCount: courseController.courseList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    width: 355,
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 5,
                      right: 5,
                      bottom: 8,
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                          color: Color(0xFFB0CCE1).withOpacity(0.32),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Switch(
                            value:
                                courseController.courseList[index].isAvailable,
                            onChanged: (value) {
                              if (!value) {
                                var response =
                                    courseController.setCourseUnavailable();
                              } else {
                                courseController.setCourseAvailable();
                              }
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () =>
                                Get.toNamed('/updateCourse', arguments: [
                              {"id": courseController.courseList[index].id},
                              {"name": courseController.courseList[index].name},
                              {
                                "price":
                                    courseController.courseList[index].price
                              },
                              {
                                "description": courseController
                                    .courseList[index].description
                              },
                              {
                                "image":
                                    courseController.courseList[index].image
                              },
                            ]),
                            child: Image(
                              image: AssetImage('assets/images/edit.png'),
                              width: 25,
                              height: 25,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      leading: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () =>
                            Get.toNamed('/adminFoodDetail', arguments: [
                          {"id": courseController.courseList[index].id},
                          {"name": courseController.courseList[index].name},
                          {"price": courseController.courseList[index].price},
                          {
                            "description":
                                courseController.courseList[index].description
                          },
                          {"image": courseController.courseList[index].image},
                        ]),
                        child: Container(
                          width: 48,
                          height: 48,
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 200.0,
                            child: SizedBox(
                              height: 120,
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl:
                                    'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                placeholder: (context, url) => Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/loading.gif',
                                    )),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                      ),
                      title: Text(courseController.courseList[index].name),
                      subtitle: Text('Rs : ' +
                          courseController.courseList[index].price.toString()),
                      dense: false,
                    ));
              },
            ),
          ),
        ),
      ],
    );
  }
}
