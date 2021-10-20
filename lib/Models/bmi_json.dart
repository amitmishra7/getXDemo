// To parse this JSON data, do
//
//     final bmi = bmiFromJson(jsonString);

import 'dart:convert';

Bmi bmiFromJson(String str) => Bmi.fromJson(json.decode(str));

String bmiToJson(Bmi data) => json.encode(data.toJson());

class Bmi {
  Bmi({
    required this.bmi,
    required this.weight,
    required this.height,
    required this.weightCategory,
  });

  double bmi;
  String weight;
  String height;
  String weightCategory;

  factory Bmi.fromJson(Map<String, dynamic> json) => Bmi(
        bmi: json["bmi"].toDouble(),
        weight: json["weight"],
        height: json["height"],
        weightCategory: json["weightCategory"],
      );

  Map<String, dynamic> toJson() => {
        "bmi": bmi,
        "weight": weight,
        "height": height,
        "weightCategory": weightCategory,
      };
}
