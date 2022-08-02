import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mountain_kidz_app/controller/bottom_navigation_controller.dart';
import 'package:mountain_kidz_app/controller/dark_light_mode_controller.dart';
import 'package:mountain_kidz_app/controller/email_js_controller.dart';
import 'package:mountain_kidz_app/controller/login_controller.dart';
import 'package:mountain_kidz_app/controller/register_controller.dart';
import 'package:mountain_kidz_app/provider/theme_provider.dart';
import 'package:mountain_kidz_app/services/light_dark_mode_service.dart';
import 'package:mountain_kidz_app/view/add_course.dart';
import 'package:mountain_kidz_app/view/add_email.dart';
import 'package:mountain_kidz_app/view/login_screen.dart';
import 'package:mountain_kidz_app/view/on_boarding_screen/on_boarding_screen.dart';
import 'package:mountain_kidz_app/view/register_screen.dart';
import 'package:mountain_kidz_app/view/user_dashboard.dart';
import 'package:mountain_kidz_app/view/tab_items/user_tab_item.dart';

void main() async {
  await GetStorage.init();
  runApp(MountainKidz());
}

class MountainKidz extends StatelessWidget {
  MountainKidz({Key? key}) : super(key: key);
  final BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  final DarkLightModeController darkLightModeController =
      Get.put(DarkLightModeController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    String initialRoute = '/onBoardingScreen';

    return GetMaterialApp(
      themeMode: ThemeService().getThemeMode(),
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
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
          page: () => const AddCourse(),
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
            binding: BindingsBuilder(() {
              Get.lazyPut<RegisterController>(() => RegisterController());
            })),
        GetPage(
          name: '/userTabItem',
          page: () => const UserTabItem(),
        ),
        GetPage(name: '/onBoardingScreen', page: () => OnBoardingScreen()),
      ],
    );
  }
}
