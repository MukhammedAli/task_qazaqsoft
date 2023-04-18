//@dart=2.9
import 'package:flutter/material.dart';
import 'package:new_app/login/login_screen.dart';
import 'package:new_app/route/routes.dart';

void main() {
  runApp(MainScreen());
}


class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     onGenerateRoute: Routes.generateRoute,
      home: LoginScreen(),

    );
  }
} 