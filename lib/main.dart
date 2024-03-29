import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mountain_kidz_app/controller/bottom_navigation_controller.dart';
import 'package:mountain_kidz_app/controller/course_controller.dart';
import 'package:mountain_kidz_app/controller/dark_light_mode_controller.dart';
import 'package:mountain_kidz_app/controller/email_js_controller.dart';
import 'package:mountain_kidz_app/controller/login_controller.dart';
import 'package:mountain_kidz_app/controller/register_controller.dart';
import 'package:mountain_kidz_app/provider/theme_provider.dart';
import 'package:mountain_kidz_app/services/light_dark_mode_service.dart';
import 'package:mountain_kidz_app/view/admin/update_course.dart';
import 'package:mountain_kidz_app/view/admin_dashboard.dart';
import 'package:mountain_kidz_app/view/changePassword.dart';
import 'package:mountain_kidz_app/view/admin/add_course.dart';
import 'package:mountain_kidz_app/view/add_email.dart';
import 'package:mountain_kidz_app/view/course/course_detail.dart';
import 'package:mountain_kidz_app/view/faq.dart';
import 'package:mountain_kidz_app/view/license_section.dart';
import 'package:mountain_kidz_app/view/login_screen.dart';
import 'package:mountain_kidz_app/view/members/members.dart';
import 'package:mountain_kidz_app/view/on_boarding_screen/on_boarding_screen.dart';
import 'package:mountain_kidz_app/view/privacy_policy.dart';
import 'package:mountain_kidz_app/view/profile/update_user_profile.dart';
import 'package:mountain_kidz_app/view/profile/user_profile.dart';
import 'package:mountain_kidz_app/view/quiz/leaderboard.dart';
import 'package:mountain_kidz_app/view/quiz/quiz.dart';
import 'package:mountain_kidz_app/view/quiz/quiz1.dart';
import 'package:mountain_kidz_app/view/quiz/quiz2.dart';
import 'package:mountain_kidz_app/view/quiz/quiz3.dart';
import 'package:mountain_kidz_app/view/quiz/quiz4.dart';
import 'package:mountain_kidz_app/view/quiz/quiz5.dart';
import 'package:mountain_kidz_app/view/quiz/quizLuck.dart';
import 'package:mountain_kidz_app/view/quiz/quiz_completed.dart';
import 'package:mountain_kidz_app/view/register_screen.dart';
import 'package:mountain_kidz_app/view/tab_items/tab_attendance.dart';
import 'package:mountain_kidz_app/view/terms_and_conditions.dart';
import 'package:mountain_kidz_app/view/user_dashboard.dart';
import 'package:mountain_kidz_app/view/tab_items/user_tab_item.dart';
import 'package:mountain_kidz_app/view/view_calender.dart';
import 'package:mountain_kidz_app/view/pdf/view_invoice.dart';

void main() async {
  // to disable landscape orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await GetStorage.init();
  runApp(MountainKidz());
}

class MountainKidz extends StatelessWidget {
  MountainKidz({Key? key}) : super(key: key);
  final BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  final CourseController courseController = Get.put(CourseController());

  final DarkLightModeController darkLightModeController =
      Get.put(DarkLightModeController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    String initialRoute = '/login';

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
            binding: BindingsBuilder(() {
              Get.lazyPut<RegisterController>(() => RegisterController());
            })),
        GetPage(
          name: '/userTabItem',
          page: () => const UserTabItem(),
        ),
        GetPage(
          name: '/courseDetail',
          page: () => CourseDetail(),
        ),
        GetPage(
          name: '/member',
          page: () => Member(),
        ),
        GetPage(
          name: '/onBoardingScreen',
          page: () => OnBoardingScreen(),
        ),
        GetPage(
          name: '/terms&Conditions',
          page: () => TermsAndCondition(),
        ),
        GetPage(
          name: '/privacyPolicy',
          page: () => PrivacyPolicy(),
        ),
        GetPage(
          name: '/license',
          page: () => LicenseSection(),
        ),
        GetPage(
          name: '/faq',
          page: () => Faq(),
        ),
        GetPage(
          name: '/userProfile',
          page: () => UserProfile(),
        ),
        GetPage(
          name: '/updateUserProfile',
          page: () => UpdateUserProfile(),
        ),
        GetPage(
          name: '/changePassword',
          page: () => ChangePassword(),
        ),
        GetPage(
          name: '/attendance',
          page: () => TabAttendance(),
        ),
        GetPage(
          name: '/calender',
          page: () => ViewCalender(),
        ),
        GetPage(
          name: '/adminDashboard',
          page: () => AdminDashboard(),
        ),
        GetPage(
          name: '/updateCourse',
          page: () => UpdateCourse(),
        ),
        GetPage(
          name: '/quiz',
          page: () => Quiz(),
        ),
        GetPage(
          name: '/leaderboard',
          page: () => Leaderboard(),
        ),
        GetPage(
          name: '/quiz1',
          page: () => Quiz1(),
        ),
        GetPage(
          name: '/quiz2',
          page: () => Quiz2(),
        ),
        GetPage(
          name: '/quiz3',
          page: () => Quiz3(),
        ),
        GetPage(
          name: '/quiz4',
          page: () => Quiz4(),
        ),
        GetPage(
          name: '/quiz5',
          page: () => Quiz5(),
        ),
        GetPage(
          name: '/quizCompleted',
          page: () => QuizCompleted(),
        ),
        GetPage(
          name: '/quizLuck',
          page: () => SpinWheel(),
        ),
        // GetPage(
        //   name: '/invoice',
        //   page: () => ViewInvoice(),
        // ),
      ],
    );
  }
}
