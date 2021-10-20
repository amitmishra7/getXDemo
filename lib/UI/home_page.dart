import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bmi_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BMIController bmiController = Get.put(BMIController());

    return Scaffold(
      appBar: AppBar(title: Text('getxdemo')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            _bmiText(),
            _bmiValue(bmiController),
            const SizedBox(height: 32),
            _enterWeightText(),
            _weightInput(bmiController),
            _enterHeightText(),
            _heightInput(bmiController),
            _getBMIButton(bmiController),
            _moreInfoButton(),
          ],
        ),
      ),
    );
  }

  ElevatedButton _moreInfoButton() {
    return ElevatedButton(
              onPressed: () => Get.toNamed('/result'),
              child: const Text('More Info'));
  }

  ElevatedButton _getBMIButton(BMIController bmiController) {
    return ElevatedButton(
              onPressed: () => bmiController.getBMI(),
              child: const Text('Get BMI'));
  }

  Padding _heightInput(BMIController bmiController) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: bmiController.heightTextController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue))),
            ),
          );
  }

  Text _enterHeightText() {
    return const Text(
            'Enter your height in M:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          );
  }

  Padding _weightInput(BMIController bmiController) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: bmiController.weightTextController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue))),
            ),
          );
  }

  Text _enterWeightText() {
    return const Text(
            'Enter your weight in Kg:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          );
  }

  Obx _bmiValue(BMIController bmiController) {
    return Obx(() => Text(bmiController.bmiValue.value.toStringAsFixed(2),
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 28)));
  }

  Text _bmiText() {
    return const Text('BMI',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20));
  }
}
