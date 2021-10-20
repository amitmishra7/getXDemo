import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class Network {
  Future<String> getBMIValue(int weight, double height) async {
    var uri =
        'https://body-mass-index-bmi-calculator.p.rapidapi.com/metric?weight=$weight&height=$height';

    var response = await http.get(Uri.parse(uri), headers: {
      'x-rapidapi-host': "body-mass-index-bmi-calculator.p.rapidapi.com",
      'x-rapidapi-key': "467676746bmsh070329930ee0eefp1b54dcjsnc18c1ca7dd80"
    });
    print(response.body);
    return response.body;
  }

  Future<String> getWeightCategory(double bmi) async {
    var uri =
        'https://body-mass-index-bmi-calculator.p.rapidapi.com/weight-category?bmi=33';

    var response = await http.get(Uri.parse(uri), headers: {
      'x-rapidapi-host': "body-mass-index-bmi-calculator.p.rapidapi.com",
      'x-rapidapi-key': "467676746bmsh070329930ee0eefp1b54dcjsnc18c1ca7dd80"
    });
    print(response.body);
    return response.body;
  }
}
