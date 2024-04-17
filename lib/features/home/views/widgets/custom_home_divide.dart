
import 'package:flutter/material.dart';
import 'package:quizapp2/core/utils/app%20color%20.dart';


class CustomHomeDivider extends StatelessWidget {
  const CustomHomeDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Divider(
      color: AppColors.primaryColor,
      thickness: 2,
      indent: 0,
      endIndent: 0,
    );
  }
}


class CustomHomeDivider1 extends StatelessWidget {
  const CustomHomeDivider1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Divider(
      color: AppColors.primaryColor,
      thickness: 1,
      indent: 50,
      endIndent: 40,
    );
  }
}
