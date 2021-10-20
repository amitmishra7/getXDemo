import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bmi_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int height = 0, weight = 0;
    final BMIController bmi = Get.put(BMIController());

    return Scaffold(
      appBar: AppBar(title: Text('getxdemo')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            const Text('BMI',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Obx(() => Text(bmi.bmiValue.value.toStringAsFixed(2),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 28))),
            const SizedBox(height: 32),
            const Text(
              'Enter your weight in Kg:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: bmi.weightTextController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue))),
              ),
            ),
            const Text(
              'Enter your height:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: bmi.heightTextController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue))),
              ),
            ),
            ElevatedButton(
                onPressed: () => bmi.getBMI(), child: const Text('Get BMI')),
            ElevatedButton(
                onPressed: () => Get.toNamed('/result'), child: const Text('More Info')),
          ],
        ),
      ),
    );
  }
}
