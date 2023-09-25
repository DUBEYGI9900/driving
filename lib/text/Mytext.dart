import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
 // final Alignment alignment;
  final double fontSize;

  MyText({Key? key, required this.text, 
  //required this.alignment, 
  required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(
       // alignment: alignment,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
