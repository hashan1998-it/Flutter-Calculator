import 'package:calculator/utils/button_method.dart';
import 'package:calculator/widgets/button_widget.dart';
import 'package:calculator/widgets/expression_widget.dart';
import 'package:calculator/widgets/result_widget.dart';
import 'package:flutter/material.dart';


class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  //Button Methods Object
  ButtonMethods buttonMethods = ButtonMethods();

  // Variables
  String expression = '';
  String resultText = '0';

  // Button Pressing Functionality
  void buttonPressed(String buttonText) {
    buttonMethods.buttonPressed(buttonText);
    setState(() {
      resultText = buttonMethods.resultText;
      expression = buttonMethods.expression;
    });
  }

  //Buttons Text List
  List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  //Main Sacffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1d2630),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Expression
                ExpressionScreen(expression: expression),

                //Result
                ResultScreen(resultText: resultText)
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),

          //Buttons
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(20),
            child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12),
                itemBuilder: ((context, index) {
                  return Button(
                      onButtonPressed: buttonPressed,
                      buttonNameList: buttons,
                      index: index);
                })),
          )),
        ],
      ),
    );
  }
}
