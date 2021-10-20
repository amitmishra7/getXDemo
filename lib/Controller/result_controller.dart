import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'bmi_controller.dart';

class ResultController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  String getWeightCategory(double bmiValue) {
    if (bmiValue < 18.5) {
      return 'Underweight';
    } else if (bmiValue < 24.9) {
      return 'Healthy';
    } else if (bmiValue < 29.9) {
      return 'Overweight';
    } else if (bmiValue < 30.0) {
      return 'Obese';
    }
    return 'Unavailable Data';
  }

  @override
  void dispose() {
    super.dispose();
  }
}
