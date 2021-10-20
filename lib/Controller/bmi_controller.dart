import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class BMIController extends GetxController {
  RxDouble bmiValue = 0.0.obs;
  late TextEditingController weightTextController;
  late TextEditingController heightTextController;

  @override
  void onInit() {
    super.onInit();
    weightTextController = TextEditingController(text: '80');
    heightTextController = TextEditingController(text: '1.83');
  }

  Future<void> getBMI() async {
    final weight = int.parse(weightTextController.text);
    final height = double.parse(heightTextController.text);

    // final data = await Network().getBMIValue(height);
    // final bmi = bmiFromJson(data);
    // bmiValue.value = bmi.bmi;

    bmiValue.value = (weight / (height * height));
  }

  @override
  void dispose() {
    weightTextController.dispose();
    heightTextController.dispose();
    super.dispose();
  }
}
