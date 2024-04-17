
import 'package:flutter/material.dart';

import 'package:quizapp2/core/utils/app%20color%20.dart';
import 'package:quizapp2/core/utils/app%20text.dart';
import 'package:quizapp2/features/home/data%20&%20model/question_model.dart';
import 'package:quizapp2/features/correct_answers/custom_final.dart';

class CustomResultDialog extends StatelessWidget {
  const CustomResultDialog({super.key,  required this.score, required this.length, this.click,required this.questions});
  final List<QuestionModel> questions;
  final int score;
  final int length;
  final void Function()?  click ;




  @override
  Widget build(BuildContext context) {

    return Dialog(
      backgroundColor: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [



          IconButton(onPressed: (  ) {
            Navigator.pop(context);
          }, icon: Icon(Icons.close)),


          Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 32 ,
                  horizontal: 94
              ),
              decoration: BoxDecoration(
                  color: AppColors.containerGrey,
                  border: Border.all(
                      color: AppColors.primaryColor
                  )
              ),
              child: Column(
                children: [
                  Text(AppTexts.result,style: TextStyle(fontSize: 20),),
                  Text("${score}/${length*1}",style: TextStyle(fontSize: 20),) ,

                ],
              ),
            ),
          ),



          SizedBox(height: 24),




         Center(
        child: GestureDetector(
                     onTap: () {
                  Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) {
                return Customfinal(questions :questions );
                },)
              );
             },
                    child: Container(
                      height: 40,
                      width: 150,
                        alignment: Alignment.center ,
                     decoration: BoxDecoration(
                      color:Color(0xffFFFFFF),
                       border: Border.all(color: AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(10)
                      ),
                     child: Text(AppTexts.reveiw,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
               ),
             ),
           ),

          SizedBox(height: 9),

          Center(
            child: GestureDetector(
              onTap: click ,
              child: Container(
                height: 40,
                width: 150,
                alignment: Alignment.center ,
                decoration: BoxDecoration(
                    color:Color(0xff006672),
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(AppTexts.retest,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ),
            ),
          ) ,


          SizedBox(height: 24),

        ],
      ),


    );
  }
}
