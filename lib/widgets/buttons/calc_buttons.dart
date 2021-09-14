import 'package:calculator/widgets/button/calc_button.dart';
import 'package:flutter/material.dart';

class CalcButtons extends StatelessWidget {
  const CalcButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
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
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: CalcButton(
                  text: '7',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '8',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '9',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: 'x',
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: CalcButton(
                  text: '4',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '5',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '6',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '-',
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: CalcButton(
                  text: '1',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '2',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '3',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '+',
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 10.0,
                  ),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text('0'),
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 24,
                      ),
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 20.0,
                      ),
                      alignment: Alignment.centerLeft,
                      primary: Theme.of(context).buttonColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '.',
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Expanded(
                child: CalcButton(
                  text: '=',
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
