import 'package:first_project_02/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:first_project_02/model/data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  final firstQuestion = questions[0];
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              firstQuestion.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          AnsweredButton(
            answer: firstQuestion.answers[0],
            onTab: () {},
          ),
          AnsweredButton(
            answer: firstQuestion.answers[1],
            onTab: () {},
          ),
          AnsweredButton(
            answer: firstQuestion.answers[2],
            onTab: () {},
          ),
          AnsweredButton(
            answer: firstQuestion.answers[3],
            onTab: () {},
          ),
        ],
      ),
    );
  }
}
