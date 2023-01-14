import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color fillColor;
  final VoidCallback onPressed;
  const Button(
      {super.key, required this.text, required this.fillColor, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: fillColor,
            shape: const StadiumBorder(),
          ),
          child: Text(text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
