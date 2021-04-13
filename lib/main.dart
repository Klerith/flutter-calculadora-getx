import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculadora/screens/calculator_screen.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CalculatorScreen(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black
      ),
      initialBinding: BindingsBuilder(
        () => {
          Get.put( CalculatorController())
        }
      ),
    );
  }
}