import 'package:flutter/material.dart';

class Visor extends StatelessWidget {
  const Visor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(
          '0',
          style: TextStyle(fontSize: 56),
        ),
      ),
    );
  }
}
