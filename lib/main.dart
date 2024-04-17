
import 'package:flutter/material.dart';
import 'package:quizapp2/features/splash/splashscreen.dart';
import 'package:quizapp2/home_screen.dart';


void main( )   {

  runApp(QuizApp());
}


class QuizApp extends StatelessWidget {
   QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
