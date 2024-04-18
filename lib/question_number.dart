import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber(
    this.questionNumber,
    this.shapeColor, {
    super.key,
  });

  final String questionNumber;
  final Color shapeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: shapeColor,
      ),
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          questionNumber,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
