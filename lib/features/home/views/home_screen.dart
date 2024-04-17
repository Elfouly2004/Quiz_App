

import 'package:flutter/material.dart';
import 'package:quizapp2/core/utils/app%20text.dart';
import 'package:quizapp2/core/widgets/app_bar_widget.dart';
import 'package:quizapp2/features/home/views/widgets/custom_home_body.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // Map<key   ,  value>
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(            toolbarHeight:100 ,
            flexibleSpace:CustomAppBar(
              name: AppTexts.appName,
            ) ,
          ),
          body: const CustomHomeBody()
      ),
    );
  }
}
