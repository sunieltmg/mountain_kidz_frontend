import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:mountain_kidz_app/model/course_model.dart';

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
  Future getAllCourse() async {
    String endpoint = 'https://mountain-kidz.herokuapp.com/course';

    try {
      final response = await client.get(
        Uri.parse(endpoint),
      );
      final stringData = response.body;
      if (response.statusCode == 200) {
        return courseFromJson(stringData);
      } else {
        return Future.error('Internal Server Error');
      }
    } catch (err) {
      return Future.error(' Error fetching data $err');
    }
  }

  // get single course
  getSingleCourse() {}

  // update single course
  Future updateCourse(Map<String, String> data, String id) async {
    String endpoint = 'https://mountain-kidz.herokuapp.com/course/$id';
    try {
      final response = await client.put(
        Uri.parse(endpoint),
        body: jsonEncode(data),
        headers: {
          "Content-Type": "application/json; charset=UTF-8",
        },
      );

      if (response.statusCode == 200) {
        return 'Course updated successfully';
      } else {
        return 'Internal Server Error';
      }
    } catch (err) {
      return Future.error(err);
    }
  }

  // set course available
  setCourseAvailable() {}

  // set course unavailable
  setCourseUnavailable() {}

  // search food
  searchCourse() {}
}
