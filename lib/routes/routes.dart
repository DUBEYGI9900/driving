import 'package:driving_app/splash_screen/register.dart';

import 'myroutes.dart';
import 'package:driving_app/home_screen.dart';
import 'package:driving_app/splash_screen/sign_screen.dart';
import 'package:driving_app/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class routes {
  static MaterialPageRoute generateroute(RouteSettings settings) {
    switch (settings.name) {
      case myroutes.home_screen:
        return MaterialPageRoute(builder: (context) => home_screen());
      case myroutes.sign_screen:
        return MaterialPageRoute(builder: (context) => SignScreen());
      case myroutes.splash_screen:
        return MaterialPageRoute(builder: (context) => Splash());
              case myroutes.register:
        return MaterialPageRoute(builder: (context) => RegisterScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          );
        });
    }
  }
}
