import 'package:flutter/material.dart';
import 'package:_01_first_project/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: GradientContainer(
            [Color.fromARGB(255, 24, 2, 63), Color.fromARGB(255, 67, 2, 87)])),
  ));
}
