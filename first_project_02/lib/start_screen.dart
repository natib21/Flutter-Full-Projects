import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.deepPurple,
        const Color.fromARGB(255, 2, 70, 102)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage('assets/images/quiz-logo.png'),
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Learn Fluter The Fun Way',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    iconSize: 30,
                    iconColor: Colors.white),
                onPressed: () {
                  print('Hello');
                },
                icon: Icon(Icons.arrow_right_alt),
                label: Text(
                  'Start Quiz',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
