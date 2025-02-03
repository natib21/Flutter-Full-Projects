import 'package:first_project_02/questionScreen.dart';
import 'package:flutter/material.dart';
import 'package:first_project_02/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswer = [];
  var activeScreen = 'active-screen';

  void switchScreen() {
    activeScreen = 'switch-screen';
  }

  void chooseAnswer(String answers) {
    selectedAnswer.add(answers);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      title: "quiz App",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(244, 0, 0, 0),
            title: Text(
              "Quiz App",
              style: TextStyle(color: const Color.fromARGB(251, 255, 255, 255)),
            ),
          ),
          body: activeScreen == 'active-screen'
              ? StartScreen(switchScreen)
              : QuestionScreen(onSelectedAnswers: chooseAnswer)),
    );
  }
}
