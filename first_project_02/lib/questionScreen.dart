import 'package:first_project_02/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "What is ....",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          AnsweredButton(
            answer: 'Click Me',
            onTab: () {},
          ),
          AnsweredButton(
            answer: 'Click Me',
            onTab: () {},
          )
        ],
      ),
    );
  }
}
