import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mountain_kidz_app/controller/bottom_navigation_controller.dart';
import 'package:mountain_kidz_app/controller/dark_light_mode_controller.dart';
import 'package:mountain_kidz_app/services/light_dark_mode_service.dart';
import 'package:mountain_kidz_app/view/members/members.dart';
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

  final DarkLightModeController darkLightModeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
            ),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            selectedItemColor: Theme.of(context).iconTheme.color,
            currentIndex: bottomNavigationController.currentIndex.value,
            onTap: (index) => bottomNavigationController.changeIndex(index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 20,
                  ),
                  label: 'Home',
                  activeIcon: Icon(Icons.home_filled)),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.notifications), label: 'Notice'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.tag_faces_outlined,
                    size: 20,
                  ),
                  label: 'Explore',
                  activeIcon: Icon(Icons.tag_faces)),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    size: 20,
                  ),
                  label: 'Profile',
                  activeIcon: Icon(Icons.person)),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('assets/mountain_kidz_logo.png'),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Mountain Kidz & Daycare',
                      style: Theme.of(context).primaryTextTheme.labelLarge,
                    ),
                  ],
                ),
              ),
              ListTile(
                trailing: Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.email,
                    color:
                        Get.isDarkMode ? Colors.purple.shade200 : Colors.green,
                  ),
                ),
                title: const Text('Send Email'),
                onTap: () => Get.toNamed("/addEmail", arguments: {
                  "SenderName": 'Sunil Tamang',
                  "phone": "9899537835978"
                }),
              ),
              ListTile(
                title: const Text('Course'),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.book,
                    color:
                        Get.isDarkMode ? Colors.purple.shade200 : Colors.green,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Change Theme'),
                trailing: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Obx(
                    () => Switch(
                        activeColor: Theme.of(context).iconTheme.color,
                        // value: darkLightModeController.status.value,
                        value: darkLightModeController.status.value,
                        onChanged: (val) {
                          darkLightModeController.status.value = val;

                          ThemeService().changeThemeMode();
                        }),
                  ),
                ),
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
            length: 2,
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
                      child: Text('Courses'),
                    ),
                    Tab(
                      child: Text('Members'),
                    ),
                  ],
                  isScrollable: true,
                ),
                SizedBox(
                  height: 450,
                  child: TabBarView(
                    children: [
                      TabCourse(),
                      Member(),
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
