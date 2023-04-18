import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_app/constants/constants.dart';


class MyButton extends StatelessWidget {
  const MyButton({this.onPressed, required this.text, super.key});

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: ApplicationPaddings.vertial,
      backgroundColor: Color.fromRGBO(187, 107, 217, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
    ),
    onPressed: onPressed, child: Text(
    text, style: TextStyle(
      fontSize: 16,

    ),
   ));
}
}