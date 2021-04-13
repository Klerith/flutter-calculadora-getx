import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:calculadora/controllers/calculator_controller.dart';
import 'calc_button.dart';

class CalculatorButtons extends StatelessWidget {

  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton( 
              text: 'AC',
              bgColor: Color(0xffA5A5A5 ),
              onPressed: () => calculatorCtrl.resetAll(),
            ),
            CalculatorButton( 
              text: '+/-',
              bgColor: Color(0xffA5A5A5 ),
              onPressed: () => calculatorCtrl.changeNegativePositive(),
            ),
            CalculatorButton( 
              text: 'del',
              bgColor: Color(0xffA5A5A5 ),
              onPressed: () => calculatorCtrl.deleteLastEntry(),
            ),
            CalculatorButton( 
              text: '/',
              bgColor: Color(0xffF0A23B ),
              onPressed: () => calculatorCtrl.selectOperation('/'),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton( 
              text: '7',
              onPressed: () => calculatorCtrl.addNumber('7'),
            ),
            CalculatorButton( 
              text: '8',
              onPressed: () => calculatorCtrl.addNumber('8'),
            ),
            CalculatorButton( 
              text: '9',
              onPressed: () => calculatorCtrl.addNumber('9'),
            ),
            CalculatorButton( 
              text: 'X',
              bgColor: Color(0xffF0A23B ),
              onPressed: () => calculatorCtrl.selectOperation('X'),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton( 
              text: '4', 
              onPressed: () => calculatorCtrl.addNumber('4'),
            ),
            CalculatorButton( 
              text: '5', 
              onPressed: () => calculatorCtrl.addNumber('5'),
            ),
            CalculatorButton( 
              text: '6', 
              onPressed: () => calculatorCtrl.addNumber('6'),
            ),
            CalculatorButton( 
              text: '-',
              bgColor: Color(0xffF0A23B ),
              onPressed: () => calculatorCtrl.selectOperation('-'),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton( 
              text: '1', 
              onPressed: () => calculatorCtrl.addNumber('1'),
            ),
            CalculatorButton( 
              text: '2', 
              onPressed: () => calculatorCtrl.addNumber('2'),
            ),
            CalculatorButton( 
              text: '3', 
              onPressed: () => calculatorCtrl.addNumber('3'),
            ),
            CalculatorButton(
              text: '+',  
              bgColor: Color(0xffF0A23B ),
              onPressed: () => calculatorCtrl.selectOperation('+'),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton( 
              text: '0', 
              big: true,
              onPressed: () => calculatorCtrl.addNumber('0'),
            ),
            CalculatorButton( 
              text: '.', 
              onPressed: () => calculatorCtrl.addDecimalPoint(),
            ),
            CalculatorButton( 
              text: '=',
              bgColor: Color(0xffF0A23B ),
              onPressed: () => calculatorCtrl.calculateResult(),
            ),
          ],
        ),
      ],
    );
  }
}