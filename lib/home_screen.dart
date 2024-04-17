import 'package:flutter/material.dart';
import 'package:quizapp2/core/utils/app%20text.dart';


class homescreen extends StatefulWidget {
  @override
  State<homescreen> createState() => _homescreenState();
}
// Groceries? _groceryItem = Groceries.pickles;
enum questions { Q1, Q2, Q3,Q4 }

class _homescreenState extends State<homescreen> {
  questions? quiz = questions.Q1;

  int Questionindex = 0;


  List <Map<String,dynamic>> Questions=[
     {
        "title":"q1",
        "answers ":["1", "4", "7", "8", "5"],
         "correct answer":"1",
          "selected Answer":null,


     },

     {
      "title":"q1",
      "answers ":["1", "4", "7", "8", "5"],
      "correct answer":"1",
      "selected Answer":null,


    },

     {
      "title":"q1",
      "answers ":["1", "4", "7", "8", "5"],
      "correct answer":"1",
      "selected Answer":null,


    },

  ];


  plusQuestionindex(){
    if(Questionindex < Questions.length-1){
      Questionindex += 1;
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {


    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        body: Column(
          children: [
            // SizedBox(height:  MediaQuery.sizeOf(context).height*0.01,),


            Container(
              height:106 ,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xff006672), borderRadius: BorderRadius.horizontal(left:Radius.circular(20),right:Radius.circular(20) )),
              child: Center(
                  child: Text("Quiz",
                      style: TextStyle(color: Colors.black,fontSize: 30),
                      textAlign: TextAlign.center)
              ),
            ),


        // ...Questions[Questionindex]["answers"].map(
        //     (answer){
        //       return Text(answer);
        //     }
        // ),






        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
                child: Text(Questions[Questionindex]["title"],
                style: TextStyle(color:Color(0xff006672),fontSize: 30),
                textAlign: TextAlign.center)
            ),
          ),
        ),


        SizedBox(height:  MediaQuery.sizeOf(context).height*0.1,),



            const Divider(
              height: 20,
              thickness: 2,
              // indent: 20,
              endIndent: 0,
              color:Color(0xff006672),
            ),


            RadioListTile<questions>(
              value: questions.Q1,
              groupValue: quiz,
              onChanged: (questions? value) {
                setState(() {
                  quiz = value;
                });
              },
              title:  Text(Questions[Questionindex]["title"],style: TextStyle(color: Colors.black,fontSize: 20),),

            ),



            RadioListTile<questions>(
              value: questions.Q2,
              groupValue: quiz,
              onChanged: (questions? value) {
                setState(() {
                  quiz = value;
                });
              },
              title:  Text(Questions[Questionindex]["title"],style: TextStyle(color: Colors.black,fontSize: 20),),

            ),


            RadioListTile<questions>(
              value: questions.Q3,
              groupValue: quiz,
              onChanged: (questions? value) {
                setState(() {
                  quiz = value;
                });
              },
              title:  Text(Questions[Questionindex]["title"],style: TextStyle(color: Colors.black,fontSize: 20),),

            ),


            RadioListTile<questions>(
              value: questions.Q4,
              groupValue: quiz,
              onChanged: (questions? value) {
                setState(() {
                  quiz = value;
                });
              },
              title:  Text(Questions[Questionindex]["title"],style: TextStyle(color: Colors.black,fontSize: 20),),

            ),


            const Divider(
              height: 20,

              thickness: 2,
              // indent: 20,
              endIndent: 0,
              color:Color(0xff006672),
            ),



            SizedBox(height:  MediaQuery.sizeOf(context).height*0.1,),



            InkWell(
              onTap: (){
                plusQuestionindex();
                setState(() {

                });

              },
              child: Container(
                width: 110,
                height: 40,
                child: Center(
                    child: Text(
                      Questionindex==Questions.length-1 ? AppTexts.send :AppTexts.next,
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


            SizedBox(height:  MediaQuery.sizeOf(context).height*0.04,),



            Center(
              child: Text("(${Questionindex+1}/${Questions.length})",style: TextStyle(fontSize: 30),),
            ),




          ],
        ),


      ),
    );
  }
  }