import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText({super.key});

  @override
  Widget build(context) {
    return Text(
      "Hello World",
      style: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255), fontSize: 28),
    );
  }
}
