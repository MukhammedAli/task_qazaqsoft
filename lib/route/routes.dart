

import 'package:flutter/material.dart';
import 'package:new_app/jsonparse/jsonparse.dart';
import 'package:new_app/login/login_screen.dart';
import 'route_constants.dart';

class Routes { 
  static Route generateRoute(RouteSettings routeSettings) { 
      switch (routeSettings.name) { 
        case AuthenticationRoute: 
          return MaterialPageRoute(builder: (context) => const LoginScreen());

        case ApiRoute: 
           return MaterialPageRoute(builder: (context) => const JsonParse());

        default: 
             return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      }
  }
}