import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/email_js_controller.dart';
import 'package:mountain_kidz_app/controller/login_controller.dart';
import 'package:mountain_kidz_app/view/add_course.dart';
import 'package:mountain_kidz_app/view/add_email.dart';
import 'package:mountain_kidz_app/view/login_screen.dart';
import 'package:mountain_kidz_app/view/register_screen.dart';
import 'package:mountain_kidz_app/view/user_dashboard.dart';

void main() {
  runApp(const MountainKidz());
}

class MountainKidz extends StatelessWidget {
  const MountainKidz({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    String initialRoute = '/login';

    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: initialRoute,
      debugShowCheckedModeBanner: false,
      title: 'Mountain Kidz & Daycare',
      getPages: [
        GetPage(
          name: '/userDashboard',
          page: () => UserDashboard(),
        ),
        GetPage(
          name: '/addEmail',
          page: () => AddEmail(),
          binding: BindingsBuilder(() {
            Get.lazyPut<EmailJsController>(() => EmailJsController());
          }),
        ),
        GetPage(
          name: '/addCourse',
          page: () => AddCourse(),
        ),
        GetPage(
            name: '/login',
            page: () => LoginScreen(),
            binding: BindingsBuilder(() {
              Get.lazyPut<LoginController>(() => LoginController());
            })),
        GetPage(
          name: '/register',
          page: () => RegisterScreen(),
        ),
      ],
    );
  }
}
