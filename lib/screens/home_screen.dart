import 'package:calculator/widgets/button/calc_button.dart';
import 'package:calculator/widgets/buttons/calc_buttons.dart';
import 'package:calculator/widgets/visor/visor.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Visor(),
            ),
            CalcButtons(),
            // Expanded(
            //   child: CalcButtons(),
            // ),
          ],
        ),
      ),
    );
  }
}
