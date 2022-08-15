import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mountain_kidz_app/services/light_dark_mode_service.dart';
import 'package:mountain_kidz_app/view/admin/viewCourse.dart';
import 'package:mountain_kidz_app/controller/dark_light_mode_controller.dart';

class AdminDashboard extends StatelessWidget {
  AdminDashboard({Key? key}) : super(key: key);
  final DarkLightModeController darkLightModeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('technicalnepal31@gmail.com'),
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
              trailing: const Icon(
                Icons.edit,
                size: 20,
              ),
              title: const Text('Update Course'),
              onTap: () {
                Get.toNamed('/updateCourse');
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [ViewCourse()],
        )),
      )),
    );
  }
}
