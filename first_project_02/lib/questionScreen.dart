import 'package:first_project_02/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:first_project_02/model/data.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(currentQuestion.text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledData().map((answer) =>
                AnsweredButton(answer: answer, onTab: answerQuestion))
          ],
        ),
      ),
    );
  }
}
