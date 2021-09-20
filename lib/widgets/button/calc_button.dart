import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function? onPressed;

  CalcButton({
    Key? key,
    required this.text,
    this.color = Colors.grey,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (this.onPressed != null) this.onPressed!();
      },
      child: Text(text),
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 24),
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
        primary: color,
      ),
    );
  }
}
