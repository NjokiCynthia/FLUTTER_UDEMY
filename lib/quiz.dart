import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;

  var answerQuestion;

  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  // void Funtion()? String; answerQuestion;

  //final VoidCallback? answerQuestion;

  void Function() {
    // TODO: implement Function
    answerQuestion();
  }

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion!(answer['score'] as int),
              answer['text'] as String);
        }).toList()
      ],
    );
  }
}
