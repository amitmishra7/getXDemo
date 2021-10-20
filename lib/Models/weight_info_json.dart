// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

class Category {
    Category({
        required this.bmi,
        required this.weightCategory,
    });

    String bmi;
    String weightCategory;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        bmi: json["bmi"],
        weightCategory: json["weightCategory"],
    );

    Map<String, dynamic> toJson() => {
        "bmi": bmi,
        "weightCategory": weightCategory,
    };
}
