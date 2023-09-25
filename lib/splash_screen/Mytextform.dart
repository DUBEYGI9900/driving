import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final String headingText; // Add this

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.headingText, // Add this
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column( // Wrap with a Column
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Text(
            headingText, // Display heading text
            style: const TextStyle(
              fontSize: 16, // You can adjust the font size as needed
              fontWeight: FontWeight.bold, // You can apply other styles too
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              hintText: hintText,
              isDense: true,
              contentPadding: const EdgeInsets.all(10),
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            textInputAction: TextInputAction.next,
            keyboardType: keyboardType,
          ),
        ),
      ],
    );
  }
}
