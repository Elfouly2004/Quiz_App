
import 'package:flutter/material.dart';
import 'package:quizapp2/core/utils/app%20color%20.dart';
import 'package:quizapp2/core/utils/app%20text.dart';
import 'package:quizapp2/features/home/data%20&%20model/question_model.dart';
import 'package:quizapp2/features/home/views/widgets/custom_home_dialog.dart';
import 'package:quizapp2/features/home/views/widgets/custom_home_divide.dart';



class CustomHomeBody extends StatefulWidget {
  const CustomHomeBody({super.key});

  @override
  State<CustomHomeBody> createState() => _CustomHomeBodyState();
}

class _CustomHomeBodyState extends State<CustomHomeBody> {


  void changeRadioSelection( answer) {
    setState(() {
      questions[questionIndex].selectedAnswer = answer;
      print('Radio butto selected: $answer');
    });}


  int count = 0;

  after(){
    if(count < questions.length-1){
      count += 1;
    }
  }


  List<QuestionModel> questions = [


    QuestionModel(
        correctAnswer: "Ronaldo",
        answers: ["Messi", "Ronaldo", "Salah", "Neymar"],
        title: "Who is your favorite player? ",
        selectedAnswer: null
    ),


    QuestionModel(
        correctAnswer: "12",
        answers: ["1", "12", "5","9"],
        title: "كم عدد شهور السنه ؟ ",
        selectedAnswer: null
    ),



    QuestionModel(
        correctAnswer: "7",
        answers: ["1", "4", "7", "8"],
        title: "كم عدد ايام الاسبوع؟",
        selectedAnswer: null
    ),

  ];


  changeSelectedAnswerToNull( ) {
    for(int i  = 0 ;  i< questions.length ; i++ ) {
      questions[i].selectedAnswer  = null;
    }
  }


  int score = 0 ;
  checkScore( ) {
    for(int i   = 0 ;  i<questions.length ; i++ ) {

      if(questions[i].correctAnswer== questions[i].selectedAnswer) {
        score += 1;
      }

    }
  }



  int questionIndex  = 0  ;
  plusQuestionIndex() {


    if(questionIndex <questions.length-1 ) {

      if(questions[questionIndex].selectedAnswer!=null){
        questionIndex++;
        setState(() {
        });
      }

      else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("choose one answer"),
        ));
      }

    }
    else{
      checkScore();
      showDialog(context: context, builder: (cont )
      {
        return CustomResultDialog(
          questions: questions,
          score: score,
          length: questions.length,
          click: ( ) {
            questionIndex = 0;
            score =  0;
            changeSelectedAnswerToNull();
            Navigator.pop(context);
            setState(() {

            });
          },
        );
      } );

    }
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height: 40,),

        Text(questions[questionIndex].title ,
          style: const TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 20 ),
          textAlign: TextAlign.center,
        ) ,


        SizedBox(height: 14,),


        CustomHomeDivider(),


        SizedBox(height: 15,),

        ...questions[questionIndex].answers.map(
                (answer){
              return Directionality(
                textDirection: TextDirection.rtl,
                child:  InkWell(
                  onTap: () => changeRadioSelection(1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: answer,
                        groupValue: questions[questionIndex].selectedAnswer,
                        onChanged: (x) {
                                  questions[questionIndex].selectedAnswer= x;
                                  setState(() {

                                  });
                        },
                        activeColor: Colors.black,
                      ),
                      Text(answer,style: TextStyle(fontSize: 20),)
                    ],
                  ),
                )
              );
            }
        ),

        SizedBox(height: 20,),


        CustomHomeDivider(),



        SizedBox(height: 20,),


        InkWell(
          onTap: (){
            plusQuestionIndex();
            setState(() {

            });

          },
          child: Container(
            width: 110,
            height: 40,
            child: Center(
                child: Text(
                  questionIndex== questions.length-1 ?AppTexts.send:AppTexts.next,
                  style: TextStyle(color: Colors.white,
                      fontSize: 24,fontWeight: FontWeight.bold
                  ),
                )
            ),
            // color: Color(0xffF8C660),
            decoration: BoxDecoration(
              color: Color(0xff004643),
              borderRadius: BorderRadius.circular(5),
            ),


          ),
        ),


        SizedBox(height: MediaQuery.sizeOf(context).height*0.07,),

        Center(
            child:Column(
              children: [
                Text("(${questionIndex + 1}/${questions.length})",style: TextStyle(fontSize: 25),)
              ],
            )
        ),






      ],
    );
  }
}
