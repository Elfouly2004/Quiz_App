import 'package:flutter/material.dart';
import 'package:quizapp2/features/correct_answers/widgets/check%20ans%20item.dart';
import 'package:quizapp2/features/home/data%20&%20model/question_model.dart';

class CheckAnswersBody extends StatelessWidget {
  const CheckAnswersBody({super.key, required this.questions});
  final List<QuestionModel>  questions;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...questions.map((questionModel) =>
            CustomCheckAnswerItemWidget(
              questions: questions,
              questionModel: questionModel,
            ),
        ),


      ],
    );
  }
}