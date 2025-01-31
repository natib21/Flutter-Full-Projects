import 'package:flutter/material.dart';
import 'package:first_project_02/start_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "quiz App",
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(244, 0, 0, 0),
          title: Text(
            "Quiz App",
            style: TextStyle(color: const Color.fromARGB(251, 255, 255, 255)),
          ),
        ),
        body: StartScreen()),
  ));
}
