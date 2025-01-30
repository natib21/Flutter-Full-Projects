import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RoleDice extends StatefulWidget {
  const RoleDice({super.key});
  @override
  State<RoleDice> createState() {
    return _RoleDiceState();
  }
}

class _RoleDiceState extends State<RoleDice> {
  var currentNum = 2;

  void roledice() {
    setState(() {
      currentNum = randomizer.nextInt(6) + 1;
    });
    print("Hello World");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentNum.png',
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28)),
            onPressed: roledice,
            child: Text('Roll dice!'))
      ],
    );
  }
}
