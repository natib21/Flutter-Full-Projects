import 'package:flutter/material.dart';

class AnsweredButton extends StatelessWidget {
  const AnsweredButton({super.key, required this.answer, required this.onTab});

  final String answer;
  final void Function() onTab;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 50, 4, 131),
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5)),
      child: Text(answer),
    );
  }
}
