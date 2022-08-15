import 'dart:convert';

import "package:http/http.dart" as http;

class CourseService {
  // add course
  static var client = http.Client();

  Future addCourse(Map<String, String> data) async {
    String endpoint = 'https://mountain-kidz.herokuapp.com/course';
    try {
      final response = await client.post(
        Uri.parse(endpoint),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: json.encode(data),
      );

      print(response.statusCode);

      if (response.statusCode == 201) {
        return 'Course created successfully';
      } else if (response.statusCode == 400) {
        return 'course already exists';
      } else {
        return 'Internal Server Error';
      }
    } catch (err) {
      return Future.error(err);
    }
  }

  // to get all course
  getAllCourse() {
    // String endpoint = '';
    // try {
    //   final response = await PersistentHtpp.client.get(Uri.parse(endpoint));
    //   final stringData = response.body;
    //   if (response.statusCode == 200) {
    //     return foodFromJson(stringData);
    //   } else {
    //     return Future.error('Internal Server Error');
    //   }
    // } catch (err) {
    //   return Future.error(' Error fetching data $err');
    // }
  }

  // get single course
  getSingleCourse() {}

  // update single course
  updateCourse() {}

  // set course available
  setCourseAvailable() {}

  // set course unavailable
  setCourseUnavailable() {}

  // search food
  searchCourse() {}
}
