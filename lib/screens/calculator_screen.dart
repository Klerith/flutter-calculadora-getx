import 'package:calculadora/widgets/calc_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:calculadora/widgets/math_results.dart';


class CalculatorScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // print( context.width );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: GetPlatform.isWeb ? 320 : 600
            ),
            margin: EdgeInsets.symmetric( horizontal: 10 ),
            child: Column(
              children: [
                
                Expanded(
                  child: Container(),
                ),

                MathResults(),

                CalculatorButtons(),
                
                if( GetPlatform.isWeb ) 
                  SizedBox( height: 100 )
              ],
            ),
          ),
        ),
      )
   );
  }
}