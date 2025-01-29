import 'package:flutter/material.dart';
import 'package:_01_first_project/styled_text.dart';

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
      child: Center(child: StyledText()),
    );
  }
}
