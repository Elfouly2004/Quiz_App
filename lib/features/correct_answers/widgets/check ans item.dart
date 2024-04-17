
import 'package:flutter/material.dart';
import 'package:quizapp2/features/home/data%20&%20model/question_model.dart';
import 'package:quizapp2/features/home/views/widgets/custom_home_divide.dart';


class CustomCheckAnswerItemWidget extends StatelessWidget {
  const CustomCheckAnswerItemWidget({super.key, required this.questionModel,required this.questions});

  final List<QuestionModel> questions;
  final QuestionModel  questionModel;

  @override
  Widget build(BuildContext context) {
    int x=0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${x+1})"),

        SizedBox(height: 10,),

        Text(questionModel.title,style: TextStyle(fontSize: 20),),

        SizedBox(height: 10,),

          CustomHomeDivider(),

        SizedBox(height: 10,),

        Wrap(
          children: [

            ...questionModel.answers.map((answer) =>SizedBox(
                width: MediaQuery.of(context).size.width/2 - 60,
                child: Text(answer,
                  style: TextStyle (color: questionModel.correctAnswer == answer ? Colors.green:
                  questionModel.correctAnswer != questionModel.selectedAnswer &&
                      questionModel.selectedAnswer == answer? Colors.red: Colors.black
                      ,fontSize: 20
                  ),
                ))
            )

          ],
        ) ,
        SizedBox(height: 10,),

        CustomHomeDivider1(),
      ],
    );
  }
}
