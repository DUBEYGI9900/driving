import 'dart:js';

import 'package:driving_app/routes/myroutes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Sign_Screen extends StatefulWidget {
  const Sign_Screen({super.key});

  @override
  State<Sign_Screen> createState() => _SignScreenState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();
bool rememberMe = false;

final String apiUrl = 'http://ds.eduapps.in/api/login';

Future<void> signIn(String email, String password) async {
  final response = await http.post(
    Uri.parse(apiUrl),
    body: {
      'email': email,
      'password': password,
    },
  );

  if (response.statusCode == 200) {
    print('Sign-in successful');
    Navigator.pushReplacementNamed(
        context as BuildContext,
        myroutes
            .home_screen); // Replace 'myroutes.home' with your actual home page route name
  } else {
    print('Sign-in failed');
  }
}

class _SignScreenState extends State<Sign_Screen> {
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for the form

  @override
  Widget build(BuildContext context) {
    // final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            child: Form(
              // Wrap your content with a Form widget
              key: _formKey, // Assign the form key
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Divider(
                    height: 0,
                    thickness: 3,
                    color: Color.fromARGB(255, 63, 121, 247),
                  ),
                  Image.asset(
                    "assets/image/logo.png",
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        hintText: "example@gmail.com",
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        suffixIcon: Icon(Icons.mail_outline_rounded),
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email';
                        }
                        return null; // Return null for no validation error
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        suffixIcon: Icon(Icons.lock_outline),
                        hintText: "abcd@12345",
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true, // Hide password input
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null; // Return null for no validation error
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: rememberMe,
                          onChanged: (newValue) {
                            setState(() {
                              rememberMe = newValue!;
                            });
                          },
                        ),
                        Text('Remember Me'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 290,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Validation passed, proceed with sign-in
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();
                          signIn(email, password);
                        }
                      },
                      child: const Text("Sign In"),
                    ),
                  ),
                  Container(
                    width: 290,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, myroutes.register);
                      },
                      child: const Text("Sign In"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
