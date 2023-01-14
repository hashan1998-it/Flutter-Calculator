import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(child: Container()),
        Row(
          children: <Widget>[
            Button(text: "C", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "⌫",fillColor: Colors.red, onPressed: (() {})),
            Button(text: "%", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "/", fillColor: Colors.red, onPressed: (() {})),
          ],
        ),Row(
          children: <Widget>[
            Button(text: "7", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "8", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "9", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "X", fillColor: Colors.red, onPressed: (() {})),
          ],
        ),Row(
          children: <Widget>[
            Button(text: "4", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "5", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "6", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "-", fillColor: Colors.red, onPressed: (() {})),
          ],
        ),Row(
          children: <Widget>[
            Button(text: "1", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "2", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "3", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "4", fillColor: Colors.red, onPressed: (() {})),
          ],
        ),Row(
          children: <Widget>[
            Button(text: "V", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "0", fillColor: Colors.red, onPressed: (() {})),
            Button(text: ".", fillColor: Colors.red, onPressed: (() {})),
            Button(text: "=", fillColor: Colors.orange, onPressed: (() {})),
          ],
        )
      ],
    ));
  }
}
