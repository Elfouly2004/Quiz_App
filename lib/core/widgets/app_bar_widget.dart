import 'package:flutter/material.dart';
import 'package:quizapp2/core/utils/app%20color%20.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return   Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )
      ),
      child: Text(name,
        style: TextStyle(
            color: Colors.white,
            fontSize: 18
            ,
            fontWeight: FontWeight.w700

        ),
      ),
    );
  }
}