import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final TextInputType keyboardType;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText, // Add this line
    required this.labelText,
    required this.keyboardType, 
    required Icon suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            
          ),
          hintText: hintText, // Add this line for hintText
          labelText: labelText, // Optionally, you can set labelText
          border: const OutlineInputBorder(),
          filled: true, // Fill the background
          fillColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        textInputAction: TextInputAction.done,
        autofocus: true,
        keyboardType: keyboardType,
      ),
    );
  }
}