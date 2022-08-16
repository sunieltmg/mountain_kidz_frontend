import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mountain_kidz_app/controller/bottom_navigation_controller.dart';
import 'package:mountain_kidz_app/controller/course_controller.dart';
import 'package:mountain_kidz_app/services/light_dark_mode_service.dart';
import 'package:mountain_kidz_app/view/admin/viewCourse.dart';
import 'package:mountain_kidz_app/controller/dark_light_mode_controller.dart';
import 'package:mountain_kidz_app/view/profile/user_profile.dart';
import 'package:mountain_kidz_app/view/view_calender.dart';

class AdminDashboard extends StatelessWidget {
  AdminDashboard({Key? key}) : super(key: key);
  CourseController courseController = Get.find();

  BottomNavigationController bottomNavigationController = Get.find();
  final screens = [
    const adminHome(),
    const ViewCalender(),
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
                  Icons.calendar_view_month,
                  size: 20,
                ),
                label: 'Calender',
                activeIcon: Icon(
                  Icons.calendar_view_month_outlined,
                  size: 20,
                ),
              ),
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
                trailing: const Icon(
                  Icons.add,
                  size: 20,
                ),
                title: const Text('Send Email'),
                onTap: () => Get.toNamed("/addEmail"),
              ),
              ListTile(
                trailing: const Icon(
                  Icons.add,
                  size: 20,
                ),
                title: const Text('Add Course'),
                onTap: () {
                  Get.toNamed('/addCourse');
                },
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
            'ADMIN DASHBOARD',
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

class adminHome extends StatelessWidget {
  const adminHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              ViewCourse(),
            ],
          )),
    ));
  }
}
