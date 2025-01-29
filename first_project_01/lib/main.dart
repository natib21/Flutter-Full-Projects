import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 24, 2, 63),
              const Color.fromARGB(255, 34, 2, 87)
            ],
          ),
        ),
        child: Center(
          child: Text("Hello World"),
        ),
      ),
    ),
  ));
}
/// lecture 014