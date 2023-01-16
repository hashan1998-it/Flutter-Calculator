import 'package:flutter/material.dart';

class ExpressionScreen extends StatelessWidget {
  const ExpressionScreen({super.key, required this.expression});
  final String expression;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerRight,
      child: Text(
        expression,
        style: const TextStyle(
            fontSize: 32, color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
