
import 'package:quizapp2/core/utils/app%20text.dart';
import 'package:quizapp2/core/widgets/app_bar_widget.dart';
import 'package:quizapp2/features/correct_answers/widgets/check%20ans%20body.dart';
import 'package:quizapp2/features/home/data%20&%20model/question_model.dart';
import'package:flutter/material.dart';
class Customfinal extends StatelessWidget {
  Customfinal({ required this.questions,});
  final List<QuestionModel> questions;



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.130,
        flexibleSpace: CustomAppBar(
          name: AppTexts.check,
        )
      ),
      body: CheckAnswersBody(questions: questions)
    );
  }
}