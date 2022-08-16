// To parse this JSON data, do
//
//     final course = courseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Course> courseFromJson(String str) => List<Course>.from(json.decode(str).map((x) => Course.fromJson(x)));

String courseToJson(List<Course> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Course {
    Course({
        required this.id,
        required this.title,
        required this.description,
        required this.image,
        required this.v,
    });

    final String id;
    final String title;
    final String description;
    final String image;
    final int v;

    factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "description": description,
        "image": image,
        "__v": v,
    };
}
