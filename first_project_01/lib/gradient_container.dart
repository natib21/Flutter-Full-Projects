import 'package:flutter/material.dart';
import 'package:_01_first_project/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color, {super.key});

  final List<Color> color;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: color, begin: startAlignment, end: endAlignment),
      ),
      child: Center(child: StyledText("Hello World")),
    );
  }
}
