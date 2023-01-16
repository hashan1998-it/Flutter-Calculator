import 'package:flutter/material.dart';



class Button extends StatefulWidget {


  const Button({super.key,required this.onButtonPressed,required this.buttonNameList,required this.index});
  final Function onButtonPressed;
  final List<String> buttonNameList;
  final int index;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  late Function buttonPressed;
  late List<String> buttons;
  late int index;

  
  @override
  void initState() {
    super.initState();
    buttonPressed = widget.onButtonPressed;
    buttons = widget.buttonNameList;
    index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 51, 94, 90),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
        onPressed: () {
          buttonPressed(buttons[index].toString());
        },
        child: Text(buttons[index],style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),);
  }
}
