import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_attendance.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_course.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_homework.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_result.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                'technicalnepal31@gmail.com',
                style: Theme.of(context).primaryTextTheme.labelLarge,
              ),
            ),
            ListTile(
              title: const Text('Email'),
              onTap: () => Get.toNamed("/addEmail", arguments: {
                "SenderName": 'Sunil Tamang',
                "phone": "9899537835978"
              }),
            ),
            ListTile(
              title: const Text('Course'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Enable Dark Theme'),
              trailing: Switch(
                  activeColor: Theme.of(context).colorScheme.secondary,
                  value: false,
                  onChanged: (bool) {
                    bool = true;
                  }),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Mountain Kidz & Daycare',
          style: TextStyle(
            height: 1.5,
            fontSize: 16,
            letterSpacing: 0.5,
            wordSpacing: 0.5,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            left: 15,
            top: 20,
            right: 15,
            bottom: 10,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text('Education \nIs Our Business',
                  style: Theme.of(context).primaryTextTheme.headlineLarge),
            ),
            const SizedBox(height: 35),
            DefaultTabController(
              length: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                    indicatorPadding: const EdgeInsets.only(top: 5),
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                            width: 4.0,
                            color: Theme.of(context).colorScheme.secondary),
                        insets: const EdgeInsets.symmetric(horizontal: 16.0)),
                    tabs: const [
                      Tab(
                        child: Text('Courses'),
                      ),
                      Tab(
                        child: Text('Attendance'),
                      ),
                      Tab(
                        child: Text('Results'),
                      ),
                      Tab(
                        child: Text('Homework'),
                      ),
                    ],
                    isScrollable: true,
                  ),
                  SizedBox(
                    height: 450,
                    child: TabBarView(
                      children: [
                        TabCourse(),
                        TabAttendance(),
                        TabResult(),
                        TabHomework(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
