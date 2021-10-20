import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/UI/home_page.dart';
import 'package:getxdemo/UI/result_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/result', page: () => ResultPage()),
      ],
    );
  }
}
