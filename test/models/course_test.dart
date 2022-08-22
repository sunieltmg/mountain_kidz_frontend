import 'package:flutter_test/flutter_test.dart';
import 'package:mountain_kidz_app/model/course_model.dart';

void main() {
  group("Course Model", () {
    test('Giving Courses course json when calling fromJson gives Course object',
        () async {
      // ignore: todo
      // TODO: Implement

      // Arrange
      List<Map<String, dynamic>> courses = [
        {
          "_id": "62b4ac6a227ceafe503807b3",
          "title": "English",
          "description": "International language",
          "image": "International language",
          "__v": 0
        },
        {
          "_id": "62b4ac7b227ceafe503807b6",
          "title": "Nepali",
          "description": "National language",
          "image": "International language",
          "__v": 0
        },
        {
          "_id": "62b4ac82227ceafe503807b9",
          "title": "Maths",
          "description": "Maths",
          "image": "International language",
          "__v": 0
        },
        {
          "_id": "62b4ac88227ceafe503807bc",
          "title": "Science",
          "description": "Science",
          "image": "International language",
          "__v": 0
        },
        {
          "_id": "62c42f6fbcef5ccb83d3a3a7",
          "title": "Computer",
          "description": "Computer",
          "image": "International language",
          "__v": 0
        },
        {
          "_id": "62c43362bcef5ccb83d3a43c",
          "title": "EPH",
          "description": "EPH",
          "image": "International language",
          "__v": 0
        },
        {
          "_id": "62c433d2bcef5ccb83d3a447",
          "title": "Moral",
          "description": "Moral",
          "image": "International language",
          "__v": 0
        }
      ];

      // Act
      List<Course> courseObjects =
          courses.map((course) => Course.fromJson(course)).toList();

      // Assert
      expect(courseObjects.length, 7);
      expect(courseObjects[0].title, 'English');
      expect(courseObjects[1].id, '62b4ac7b227ceafe503807b6');
    });
    test('Testing if Course.fromJson works with empty json', () async {
      // ignore: todo
      // TODO: Implement

      // Arrange
      List<Map<String, dynamic>> courses = [];

      // Act
      List<Course> courseObjects =
          courses.map((course) => Course.fromJson(course)).toList();

      // Assert
      expect(courseObjects.length, 0);
    });
    test('Check if Course.toJson converts the Course instance to a Map Object',
        () async {
      // ignore: todo
      // TODO: Implement

      // Arrange
      Course course = Course(
          id: "62b4ac82227ceafe503807b9",
          title: "Nepali",
          description: "National language",
          image: "nepali.jpg",
          v: 0);

      // Act
      Map<String, dynamic> courseJson = course.toJson();

      // Assert
      expect(courseJson['_id'], '62b4ac82227ceafe503807b9');
      expect(courseJson['title'], 'Nepali');
      expect(courseJson['__v'], 0);
    });
  });
}
