import 'dart:async';
import 'package:driving_app/routes/myroutes.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  get user => null;


  @override
  void initState() {
    super.initState();
    _loadMainScreen();
  }

  Future<void> _loadMainScreen() async {

    Timer(
      const Duration(seconds: 1),
      () {
        if (user != null) {
          Navigator.pushNamed(context, myroutes.home_screen);
          
        } else {
                    Navigator.pushNamed(context, myroutes.sign_screen);

        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Stack(
        children: [
              SizedBox(height: 20,),
                Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/image/logo.png"),
                   
                  ],
                ),
                ),

             
        ],
       )
      
    );
  }
}