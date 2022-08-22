import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/course_controller.dart';
import 'package:mountain_kidz_app/view/course/course_resources.dart';
import 'package:mountain_kidz_app/view/quiz/quiz.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_attendance.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseDetail extends StatelessWidget {
  CourseDetail({Key? key}) : super(key: key);

  final Uri _url = Uri.parse('https://youtu.be/2Yw6dFQBklA');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  List data = Get.arguments;
  CourseController courseController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.bookmark_outline,
            size: 20,
          ),
          SizedBox(
            width: 30,
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 20,
          ),
          onPressed: () => Get.offNamed('/userDashboard'),
        ),
        title: Text(
          data[0]['title'],
          style: Theme.of(context).primaryTextTheme.titleMedium,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),

              // hero image
              Stack(clipBehavior: Clip.none, children: [
                CachedNetworkImage(
                  key: UniqueKey(),
                  imageUrl: data[2]['image'],
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Image(
                    width: 25,
                    height: 25,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/loading.gif',
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                Positioned(
                  right: 50,
                  bottom: -30,
                  child: InkWell(
                    onTap: () async {
                      const url = "https://youtu.be/2Yw6dFQBklA";

                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(
                          Uri.parse(url),
                          mode: LaunchMode.platformDefault,
                        );
                      }
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const Image(
                        image: AssetImage("assets/videoIcon.gif"),
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),
              ]),

              // course title
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 20,
                ),
                child: Text(
                  data[0]['title'],
                  style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      letterSpacing: 0.5,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      color: Get.isDarkMode
                          ? Colors.purple.shade200
                          : Colors.green.shade800),
                ),
              ),

              // course description

              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 10),
                child: Text(
                  data[1]['description'],
                  style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      letterSpacing: 0.5,
                      wordSpacing: 0.5,
                      fontWeight: FontWeight.w300,
                      color: Get.isDarkMode
                          ? Colors.grey.withOpacity(0.8)
                          : Colors.black87),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      primary: Theme.of(context).iconTheme.color,
                      minimumSize: const Size(100, 35),
                    ),
                    onPressed: () async {
                      const phoneNumber = '+9779863027050';
                      const url = 'tel:$phoneNumber';

                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(
                          Uri.parse(url),
                          mode: LaunchMode.platformDefault,
                        );
                      }
                    },
                    child: const Text(
                      'Enroll Now',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1,
                        wordSpacing: 0.5,
                      ),
                    )),
              ),

              const SizedBox(
                height: 10,
              ),

              const Padding(
                padding: EdgeInsets.only(left: 10.0, top: 20, right: 10),
                child: Divider(
                  height: 1,
                ),
              ),

              DefaultTabController(
                length: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TabBar(
                      indicatorPadding: const EdgeInsets.only(top: 0),
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 3.0,
                              color: Theme.of(context).colorScheme.secondary),
                          insets: const EdgeInsets.symmetric(horizontal: 16.0)),
                      tabs: const [
                        Tab(
                          child: Text('Resources'),
                        ),
                        Tab(
                          child: Text('Attendance'),
                        ),
                        Tab(
                          child: Text('Quiz'),
                        ),
                      ],
                      isScrollable: true,
                    ),
                    SizedBox(
                      height: 450,
                      child: TabBarView(
                        children: [
                          CourseResources(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TabAttendance(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Quiz(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
