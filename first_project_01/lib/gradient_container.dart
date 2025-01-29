import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 24, 2, 63),
          const Color.fromARGB(255, 67, 2, 87)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
              color: const Color.fromARGB(255, 216, 166, 17), fontSize: 28),
        ),
      ),
    );
  }
}
