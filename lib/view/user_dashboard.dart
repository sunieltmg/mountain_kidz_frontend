import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/bottom_navigation_controller.dart';
import 'package:mountain_kidz_app/services/light_dark_mode_service.dart';
import 'package:mountain_kidz_app/view/profile/user_profile.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_attendance.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_course.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_homework.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_result.dart';

class UserDashboard extends StatelessWidget {
  UserDashboard({Key? key}) : super(key: key);

  BottomNavigationController bottomNavigationController = Get.find();
  final screens = [
    const userHome(),
    const Text('Explore'),
    const UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            selectedItemColor: Theme.of(context).iconTheme.color,
            currentIndex: bottomNavigationController.currentIndex.value,
            onTap: (index) => bottomNavigationController.changeIndex(index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                  activeIcon: Icon(Icons.home_filled)),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.notifications), label: 'Notice'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.tag_faces),
                  label: 'Explore',
                  activeIcon: Icon(Icons.tag_faces_outlined)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  activeIcon: Icon(Icons.person_outlined)),
            ],
          ),
        ),
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
                trailing: const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.email),
                ),
                title: const Text('Send Email'),
                onTap: () => Get.toNamed("/addEmail", arguments: {
                  "SenderName": 'Sunil Tamang',
                  "phone": "9899537835978"
                }),
              ),
              ListTile(
                title: const Text('Course'),
                trailing: const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.book),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Dark Mode'),
                trailing: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Switch(
                      activeColor: Theme.of(context).colorScheme.secondary,
                      value: false,
                      onChanged: (bool) {
                        bool = true;
                      }),
                ),
                onTap: () {},
              ),
              ListTile(
                  title: const Text('Dark Mode'),
                  trailing: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextButton(
                          onPressed: () {
                            ThemeService().changeThemeMode();
                          },
                          child: const Text('change ')))),
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
        body: screens[bottomNavigationController.currentIndex.value],
      ),
    );
  }
}

class userHome extends StatelessWidget {
  const userHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(
          left: 15,
          top: 20,
          right: 15,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      const TabAttendance(),
                      const TabResult(),
                      const TabHomework(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
