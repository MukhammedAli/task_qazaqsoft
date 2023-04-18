import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_app/constants/constants.dart';
import 'package:new_app/jsonparse/jsonparse.dart';
import 'package:new_app/route/route_constants.dart';
import 'package:new_app/widgets/clipped_image.dart';
import 'package:new_app/widgets/my_text.dart';
import 'package:new_app/widgets/mybutton.dart';
import 'package:new_app/widgets/mytextfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFE8E9ED),
      body: Stack(
        children: [
          ClippedImage(url: 'assets/background.jpg'),
          Padding(padding: ApplicationPaddings.primary,
          child: MyText(text: 'Вход'),
          ),
          Align(alignment: Alignment.center,
          child: Container(
            width: 327,
            height: 348,
            decoration: BoxDecoration(color: Colors.white, 
            borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                   const Spacer(),
                   Padding(
                    padding: ApplicationPaddings.horizontal,
                    child: MyTextField(label: 'Email'),
                  ),
                  const Spacer(),
                   Padding(
                    padding: ApplicationPaddings.horizontal,
                    child: MyTextField(label: 'Пароль'),
                  ),
                  const Spacer(),
                  Padding(
                    padding: ApplicationPaddings.horizontal,
                    child:  MyButton(onPressed: () => Navigator.pushNamed(context, ApiRoute), text: 'Войти'),
                  ),
                  const Spacer(),

            ]),
          ),
          
          ),
          
        ],
      ),
    );
  }
}