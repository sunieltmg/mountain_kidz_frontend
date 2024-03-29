import 'package:get/get.dart';
import 'package:mountain_kidz_app/services/course_service.dart';
import 'package:mountain_kidz_app/view/admin/update_course.dart';
import 'package:pdf/widgets.dart';

class CourseController extends GetxController {
  var courseList = [].obs;
  var menuList = [].obs;
  var foundFood = [].obs;
  var isAvailable = true.obs;

  @override
  void onInit() {
    getAllCourse();
    super.onInit();
  }

  CourseService courseService = Get.put(CourseService());

  // get all course
  getAllCourse() async {
    var data = await courseService.getAllCourse();
    if (data != null) {
      courseList.value = data;
      return data;
    }
  }

  // add single course
  addCourse(Map<String, String> data) async {
    var response = await courseService.addCourse(data);
    await getAllCourse();
    return response;
  }

  // update single food
  UpdateCourse(Map<String, String> data, String id) async {
    var response = await courseService.updateCourse(data, id);
    await getAllCourse();
    return response;
  }

  //set food Available
  setCourseAvailable() async {
    courseService.setCourseAvailable();
  }

  //set food Unavailable
  setCourseUnavailable() async {
    var response = courseService.setCourseAvailable();

    return response;
  }

  //search and filter food
  searchCourse() async {
    var response = await courseService.searchCourse();
    courseList.value = response;
  }
}
