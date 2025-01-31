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
              width: 200,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Learn Fluter The Fun Way',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        const Color.fromARGB(8, 26, 88, 180)),
                    shape: WidgetStatePropertyAll(LinearBorder.none)),
                onPressed: () {
                  print('Hello');
                },
                child: Text(
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
