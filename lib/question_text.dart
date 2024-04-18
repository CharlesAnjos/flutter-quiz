import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionText extends StatelessWidget {
  const QuestionText(
    this.questionText,
    this.textColor,
    this.textSize,
    this.textWeight, {
    super.key,
  });

  final String questionText;
  final Color textColor;
  final double textSize;
  final FontWeight textWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: GoogleFonts.lato(
        color: textColor,
        fontSize: textSize,
        fontWeight: textWeight,
      ),
    );
  }
}
