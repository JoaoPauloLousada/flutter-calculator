import 'package:calculator/widgets/button/calc_button.dart';
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
            SizedBox(
              width: size.width,
              height: size.height * .10,
              child: Visor(),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CalcButton(
                      text: 'AC',
                    ),
                  ),
                  Expanded(
                    child: CalcButton(
                      text: '+/-',
                    ),
                  ),
                  Expanded(
                    child: CalcButton(
                      text: '%',
                    ),
                  ),
                  Expanded(
                    child: CalcButton(
                      text: '/',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
