
import 'package:quizapp2/core/utils/app%20color%20.dart';
import 'package:quizapp2/core/widgets/app_bar_widget.dart';
import 'package:quizapp2/features/home/data%20&%20model/question_model.dart';
import 'package:quizapp2/features/home/views/widgets/custom_home_divide.dart';
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
        flexibleSpace: CustomAppBar()
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.sizeOf(context).width * 0.05,
                    bottom: MediaQuery.sizeOf(context).height * 0.02,),
                  child: Text(
                    "(${index + 1}",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.sizeOf(context).height * 0.02,
                      color: AppColors.numberOfCheckAnswer,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.sizeOf(context).width * 0.1,
                    bottom: MediaQuery.sizeOf(context).height * 0.015,
                  ),
                  child: Text(
                    questions[index].title,
                    style: TextStyle(
                      fontSize: MediaQuery.sizeOf(context).height * 0.02,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              CustomHomeDivider(),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.025,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("${questions[index].answers[0]}",style: TextStyle(fontSize: 20,color: ( questions[index].selectedAnswer==questions[index].correctAnswer&&questions[index].correctAnswer==questions[index].answers )? Color(0xffFFFFFF): Color(0xff615D5D),)),
                  Text("${questions[index].answers[1]}",style: TextStyle(fontSize: 20,color: (questions[index].selectedAnswer==questions[index].correctAnswer&&questions[index].correctAnswer==questions[index].answers)? Color(0xffFFFFFF): Color(0xff615D5D),),),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("${questions[index].answers[2]}",style: TextStyle(fontSize: 20,color: ( questions[index].selectedAnswer==questions[index].correctAnswer&&questions[index].correctAnswer==questions[index].answers)? Color(0xffFFFFFF): Color(0xff615D5D),)),
                  Text("${questions[index].answers[3]}",style: TextStyle(fontSize: 20,color: ( questions[index].selectedAnswer==questions[index].correctAnswer&&questions[index].correctAnswer==questions[index].answers )? Color(0xffFFFFFF): Color(0xff615D5D),),),

                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              Divider(
                thickness: MediaQuery.sizeOf(context).width * 0.005,
                color: AppColors.primaryColor.withOpacity(0.3),
              ),
            ],
          );
        },
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.02,
          );
        },
        itemCount: questions.length,
      ),
    );
  }
}