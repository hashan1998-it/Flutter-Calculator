import 'package:math_expressions/math_expressions.dart';

 
 class ButtonMethods {
  // Variables
  String expression = '';
  String resultText = '0';

  // Button Pressing Functionality
  void buttonPressed(String buttonText) {
    if (buttonText == 'C') {
      expression = '';
      resultText = '0';
    } 
    else if (buttonText == 'DEL') {
      try {
        expression = expression.substring(0, expression.length - 1);
      } on RangeError {
        resultText = "0";
        expression = "";
      }
    } else if (buttonText == '=') {
      if (expression.isNotEmpty) {
        try {
          Parser p = Parser();
          Expression exp = p.parse(expression.replaceAll("x", "*"));
          double result =
              exp.evaluate(EvaluationType.REAL, ContextModel()).toDouble();
          if (result == result.truncate()) {
            resultText = result.truncate().toString();
          } else {
            resultText = result.toString();
          }
        } on FormatException {
          resultText = "Error:Format Exception";
        } on RangeError {
          expression = "";
          resultText = "0";
        } on Exception {
          resultText = "Error:Exception";
        }
      } else {
        resultText = '0';
      }
    } else {
      expression += buttonText;
    }

    
  }
 }