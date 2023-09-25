import 'package:driving_app/routes/myroutes.dart';
import 'package:driving_app/routes/routes.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: myroutes.splash_screen,
     onGenerateRoute:routes.generateroute,
    // on routes.generateroute,

        );
       
  }
}

