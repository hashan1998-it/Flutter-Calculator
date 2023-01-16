import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.resultText});
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.centerRight,
      child: Text(
        resultText,
        style: const TextStyle(
            fontSize: 48, color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
