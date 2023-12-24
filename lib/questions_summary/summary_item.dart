import 'package:adv_basics/questions_summary/question_idetifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5
              ),
              Text(itemData['user_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 236, 174, 174),
                  )),
              Text(itemData['correct_answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 107, 210, 210),
              )),
            ],
          ),
        ),
      ],
    );
  }
}
