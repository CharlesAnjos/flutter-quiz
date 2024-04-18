import 'package:flutter_quiz/question_number.dart';
import 'package:flutter_quiz/question_text.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  Color getNumberColor(data) {
    return data['selected_answer'] == data['correct_answer']
        ? Colors.green
        : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QuestionNumber(
                      ((data['question_index'] as int) + 1).toString(),
                      getNumberColor(data),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          QuestionText(data['question'] as String, Colors.white,
                              15, FontWeight.bold),
                          const SizedBox(
                            height: 5,
                          ),
                          QuestionText(data['selected_answer'] as String,
                              Colors.grey, 12, FontWeight.normal),
                          QuestionText(data['correct_answer'] as String,
                              Colors.green, 12, FontWeight.normal),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
