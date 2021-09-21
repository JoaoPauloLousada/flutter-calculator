import 'package:calculator/models/calculator_model.dart';
import 'package:flutter/material.dart';

class Visor extends StatelessWidget {
  final String currentValue;
  final Operation currentOperation;

  const Visor({
    Key? key,
    required this.currentValue,
    required this.currentOperation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            this.currentValue.toString(),
            style: TextStyle(fontSize: 72),
          ),
        ),
      ),
    );
  }
}
