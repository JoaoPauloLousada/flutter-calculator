import 'package:calculator/models/calculator_model.dart';
import 'package:calculator/widgets/buttons/calc_buttons.dart';
import 'package:calculator/widgets/visor/visor.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CalculatorModel _calc = new CalculatorModel();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Visor(
              currentValue: _calc.visorText,
              currentOperation: _calc.currentOperation,
            ),
            CalcButtons(
              numericAction: (value) {
                setState(() {
                  _calc.registerValue(value);
                });
              },
              operationAction: (value) {
                setState(() {
                  _calc.registerCurrentOperation(value);
                });
              },
              resolveAction: () {
                setState(() {
                  _calc.resolve();
                });
              },
              clearAction: () {
                setState(() {
                  _calc.clearAll();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
