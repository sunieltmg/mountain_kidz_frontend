import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var currentIndex = 0.obs;

  // change index
  void changeIndex(int index) => currentIndex.value = index;
}
