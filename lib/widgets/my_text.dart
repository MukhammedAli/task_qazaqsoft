import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyText extends StatelessWidget {

  final String text;

  const MyText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 34, 
        fontWeight: FontWeight.bold,
        color:Colors.white,),
    );
  }
}