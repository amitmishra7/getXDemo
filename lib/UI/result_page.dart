import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/Controller/result_controller.dart';
import 'package:getxdemo/controller/bmi_controller.dart';

class ResultPage extends StatelessWidget {
  final ResultController resultController = Get.put(ResultController());
  final BMIController bmiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              _bmiText(),
              const SizedBox(height: 8),
              _bmiValueText(),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 8),
              _weightCategoryText(),
              const SizedBox(height: 8),
              _weightCategoryValueText(),
            ],
          ),
        ),
      ),
    );
  }

  Text _bmiValueText() {
    return Text(bmiController.bmiValue.value.toStringAsFixed(2),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 32));
  }

  Text _bmiText() {
    return const Text('Your BMI is:',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20));
  }

  Text _weightCategoryText() {
    return const Text('You are Weight Category is:',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20));
  }

  _weightCategoryValueText() {
    return Text(
        resultController.getWeightCategory(
          bmiController.bmiValue.value,
        ),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32));
  }
}
