import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;

  const CalcButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {},
      child: Text(text),
      style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 24),
          shape: CircleBorder(),
          padding: EdgeInsets.all(20)),
    );
  }
}
