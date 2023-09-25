//   import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter App',
//       theme: ThemeData(
//         colorSchemeSeed: Colors.indigo,
//         useMaterial3: true,
//         brightness: Brightness.light,
//       ),
//       darkTheme: ThemeData(
//         colorSchemeSeed: Colors.blue,
//         useMaterial3: true,
//         brightness: Brightness.dark,
//       ),
//       home:  MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final _productsizedlist = ["male", "female", "other"];
// String _selectedval = "male"; // Initialize the selected value here.
//   DateTime selectedData = DateTime.now();

//   ///
//    File? _image;

//   // Function to open the image picker
//   Future<void> _pickImage(ImageSource source) async {
//     final pickedImage = await ImagePicker().pickImage(source: source);
//     if (pickedImage != null) {
//       setState(() {
//         _image = File(pickedImage.path);
//       });
//     }}
//   /////
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//              Text(
//               "${selectedData.year}-${selectedData.month}-${selectedData.day}",
//             ),
//             ElevatedButton(
//               onPressed: ()async{
//                 final DateTime?dateTime = await showDatePicker(
//                   context: context,
//                   initialDate: selectedData,
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(3000),
//                 );
//                 if(dateTime!=null){
//                   setState(() {
//                                       selectedData = dateTime;
//                                     });
//                 }
//               }, child: Text("date")
//             ),
//             SizedBox(height: 50,),
// DropdownButton(
//                 value: _selectedval,
//                 items: _productsizedlist.map((e) {
//                   return DropdownMenuItem(
//                     child: Text(e),
//                     value: e,
//                   );
//                 }).toList(),
//                 onChanged: (val) {
//                   // Use setState to update the selected value.
//                   setState(() {
//                     _selectedval = val as String;
//                   });
//                 },
//               ),
//               SizedBox(
//                 height: 50,
//               ),
// _image == null
//                 ? Text('No image selected.')
//                 : Image.file(_image!),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _pickImage(ImageSource.gallery),
//               child: Text('Pick an image from gallery'),
//             ),
//             ElevatedButton(
//               onPressed: () => _pickImage(ImageSource.camera),
//               child: Text('Take a photo'),
//             ),
//           ],
//         ),
//       ),

//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
// //////////////dropdown/////////////////
// //import 'package:flutter/material.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatefulWidget {
// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }

// // final _productsizedlist = ["male", "female", "other"];
// // String _selectedval = "male"; // Initialize the selected value here.

// // class _MyAppState extends State<MyApp> {
// //       File? _image;

// //   // Function to open the image picker
// //   Future<void> _pickImage(ImageSource source) async {
// //     final pickedImage = await ImagePicker().pickImage(source: source);
// //     if (pickedImage != null) {
// //       setState(() {
// //         _image = File(pickedImage.path);
// //       });
// //     }}
// //   DateTime selectedData = DateTime.now();

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Custom Dropdown Button'),
// //         ),
// //         body: Column(
// //           children: [
//         //     Center(
// //               child: DropdownButton(
// //                 value: _selectedval,
// //                 items: _productsizedlist.map((e) {
// //                   return DropdownMenuItem(
// //                     child: Text(e),
// //                     value: e,
// //                   );
// //                 }).toList(),
// //                 onChanged: (val) {
// //                   // Use setState to update the selected value.
// //                   setState(() {
// //                     _selectedval = val as String;
// //                   });
// //                 },
// //               ),
// //            ),
// //             SizedBox(
// //               height: 50,
// //             ),
// //             //Container(
// //                Text(
// //               "${selectedData.year}-${selectedData.month}-${selectedData.day}",
// //             ),
// //             ElevatedButton(
// //               onPressed: ()async{
// //                 final DateTime?dateTime = await showDatePicker(
// //                   context: context,
// //                   initialDate: selectedData,
// //                   firstDate: DateTime(2000),
// //                   lastDate: DateTime(3000),
// //                 );
// //                 if(dateTime!=null){
// //                   setState(() {
// //                                       selectedData = dateTime;
// //                                     });
// //                 }
// //               }, child: Text("date")
// //             ),
// //             SizedBox(
// //               height: 50,
// //             ),
// //  _image == null
// //                 ? Text('No image selected.')
// //                 : Image.file(_image!),
// //             SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () => _pickImage(ImageSource.gallery),
// //               child: Text('Pick an image from gallery'),
// //             ),
// //             ElevatedButton(
// //               onPressed: () => _pickImage(ImageSource.camera),
// //               child: Text('Take a photo'),
// //             ),
// //           //  )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//  /////////////////api
//  ///import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;

// // class RegisterScreen extends StatefulWidget {
// //   const RegisterScreen({Key? key}) : super(key: key);

// //   @override
// //   State<RegisterScreen> createState() => _RegisterScreenState();
// // }

// // class _RegisterScreenState extends State<RegisterScreen> {
// //   final firstnameController = TextEditingController();
// //   final middlenameController = TextEditingController();
// //   final lastnameController = TextEditingController();
// //   final genderController = TextEditingController();
// //   final roleController = TextEditingController();
// //   final birthdayController = TextEditingController();
// //   final contactController = TextEditingController();
// //   final emailController = TextEditingController();
// //   final addressController = TextEditingController();
// //   final usernameController = TextEditingController();
// //   final passwordController = TextEditingController();
// //   final confirmPasswordController = TextEditingController();

// //   Future<void> registerUser() async {
// //     final apiUrl = Uri.parse('https://your-api-url.com/register');

// //     final requestData = {
// //       'firstname': firstnameController.text,
// //       'middlename': middlenameController.text,
// //       'lastname': lastnameController.text,
// //       'gender': genderController.text,
// //       'role': roleController.text,
// //       'birthday': birthdayController.text,
// //       'contact': contactController.text,
// //       'email': emailController.text,
// //       'address': addressController.text,
// //       'username': usernameController.text,
// //       'password': passwordController.text,
// //       'confirm_password': confirmPasswordController.text,
// //     };

// //     try {
// //       final response = await http.post(
// //         apiUrl,
// //         body: requestData,
// //       );

// //       if (response.statusCode == 200) {
// //         print('User registered successfully');
// //         // You can navigate to another screen or show a success message here
// //       } else {
// //         print('Registration failed with status code: ${response.statusCode}');
// //         // You can show an error message to the user
// //       }
// //     } catch (error) {
// //       print('Error: $error');
// //       // You can show an error message to the user
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SingleChildScrollView(
// //         child: Center(
// //           child: Container(
// //             width: 500,
// //             height: 650,
// //             // Add your container decoration and child widgets here...

// //             ElevatedButton(
// //               onPressed: () {
// //                 registerUser();
// //               },
// //               child: Text('Register'),
// //             ),

// //             // Add more UI elements and text fields here...

// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

//  ///end
//  ///
// import 'package:driving_app/splash_screen/Mytextform.dart';
// import 'package:driving_app/splash_screen/photo.dart';
// import 'package:driving_app/text/Mytext.dart';
// import 'package:flutter/material.dart';

// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({Key? key}) : super(key: key);

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   final firstnameController = TextEditingController();
//   final middlenameController = TextEditingController();
//   final lastnameController = TextEditingController();
//   final _productsizedlist = ["male", "female", "other"];
//   final _rolesizedlist = ["Student", "Instructor"];
//   DateTime selectedData = DateTime.now();
//   final _dateController = TextEditingController();
//   final contactController = TextEditingController();
//   final emailController = TextEditingController();
//   final addressController = TextEditingController();
//   final usernameController = TextEditingController();
//   final PasswordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Container(
//             width: 500,
//             height: 650,
//             decoration: BoxDecoration(
//               color: Colors.blueGrey.shade100,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Column(
//               children: [
//                 const SizedBox(height: 5),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Photo(),
//                     MyText(text: "Profile Information", fontSize: 20),
//                   ],
//                 ),

//                 const SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: MyTextField(
//                         controller: firstnameController,
//                         hintText: "first name",
//                         keyboardType: TextInputType.text,
//                         headingText: 'First Name',
//                       ),
//                     ),
//                     Expanded(
//                         child: MyTextField(
//                       controller: middlenameController,
//                       hintText: "middle name",
//                       keyboardType: TextInputType.text,
//                       headingText: 'Middle Name',
//                     )),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: MyTextField(
//                         controller: lastnameController,
//                         hintText: "last name",
//                         keyboardType: TextInputType.text,
//                         headingText: 'Last Name',
//                       ),
//                     ),
//                     Expanded(
//                         child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.only(left: 10, right: 10),
//                           child: Text(
//                             "Gender", // Display heading text
//                             style: TextStyle(
//                               fontSize:
//                                   16, // You can adjust the font size as needed
//                               fontWeight: FontWeight
//                                   .bold, // You can apply other styles too
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8),
//                           child: DropdownButtonFormField<String>(
//                             items: _productsizedlist.map((e) {
//                               return DropdownMenuItem(
//                                 child: Text(e),
//                                 value: e,
//                               );
//                             }).toList(),
//                             onChanged: (val) {},
//                             selectedItemBuilder: (BuildContext context) {
//                               return _productsizedlist
//                                   .map<Widget>((String item) {
//                                 return Text(
//                                   item,
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight
//                                         .bold, // Selected item font weight
//                                   ),
//                                 );
//                               }).toList();
//                             },
//                             decoration: const InputDecoration(
//                               isDense: true,
//                               contentPadding: EdgeInsets.all(
//                                   8), // Adjust the padding as needed
//                               border: OutlineInputBorder(),
//                               hintText: "Select",
//                               hintStyle: TextStyle(color: Colors.black),
//                               filled: true,
//                               fillColor: Color.fromARGB(255, 255, 255, 255),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.only(left: 10, right: 10),
//                             child: Text(
//                               "Role", // Display heading text
//                               style: TextStyle(
//                                 fontSize:
//                                     16, // You can adjust the font size as needed
//                                 fontWeight: FontWeight
//                                     .bold, // You can apply other styles too
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8),
//                             child: DropdownButtonFormField<String>(
//                               items: _rolesizedlist.map((e) {
//                                 return DropdownMenuItem(
//                                   child: Text(e),
//                                   value: e,
//                                 );
//                               }).toList(),
//                               onChanged: (val) {},
//                               selectedItemBuilder: (BuildContext context) {
//                                 return _rolesizedlist
//                                     .map<Widget>((String item) {
//                                   return Text(
//                                     item,
//                                     style: const TextStyle(
//                                       fontWeight: FontWeight
//                                           .bold, // Selected item font weight
//                                     ),
//                                   );
//                                 }).toList();
//                               },
//                               decoration: const InputDecoration(
//                                 isDense: true,
//                                 contentPadding: EdgeInsets.all(
//                                     8), // Adjust the padding as needed
//                                 border: OutlineInputBorder(),
//                                 hintText: "Select",
//                                 hintStyle: TextStyle(color: Colors.black),
//                                 filled: true,
//                                 fillColor: Color.fromARGB(255, 255, 255, 255),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           const Padding(
//                             padding: EdgeInsets.only(left: 10, right: 10),
//                             child: Text(
//                               "Birthday", // Display heading text
//                               style: TextStyle(
//                                 fontSize:
//                                     16, // You can adjust the font size as needed
//                                 fontWeight: FontWeight
//                                     .bold, // You can apply other styles too
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               children: <Widget>[
//                                 TextFormField(
//                                   controller: _dateController,
//                                   decoration: InputDecoration(
//                                     isDense: true, // Set isDense to true
//                                     contentPadding: const EdgeInsets.all(
//                                         8), // Adjust the padding as needed
//                                     border: const OutlineInputBorder(),
//                                     hintText: "Select",
//                                     hintStyle:
//                                         const TextStyle(color: Colors.black),
//                                     filled: true,
//                                     fillColor: const Color.fromARGB(
//                                         255, 255, 255, 255),
//                                     suffixIcon: IconButton(
//                                       icon: const Icon(Icons.date_range),
//                                       onPressed: () async {
//                                         final DateTime? dateTime =
//                                             await showDatePicker(
//                                           context: context,
//                                           initialDate: selectedData,
//                                           firstDate: DateTime(2000),
//                                           lastDate: DateTime(3000),
//                                         );
//                                         if (dateTime != null) {
//                                           setState(() {
//                                             selectedData = dateTime;
//                                             _dateController.text =
//                                                 "${selectedData.year}-${selectedData.month}-${selectedData.day}";
//                                           });
//                                         }
//                                       },
//                                     ),
//                                   ),
//                                   readOnly: true,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: MyTextField(
//                         controller: contactController,
//                         hintText: "Contact",
//                         keyboardType: TextInputType.phone,
//                         headingText: 'Contact',
//                       ),
//                     ),
//                     Expanded(
//                         child: MyTextField(
//                       controller: emailController,
//                       hintText: "email",
//                       keyboardType: TextInputType.emailAddress,
//                       headingText: 'Email',
//                     )),
//                   ],
//                 ),
//                 MyTextField(
//                     controller: addressController,
//                     hintText: "address",
//                     keyboardType: TextInputType.text,
//                     headingText: "Address"),
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Divider(
//                     height: 0,
//                     thickness: 1,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   //mainAxisSize: MainAxisSize.min, // This ensures minimal horizontal spacing
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                     ),
//                     Icon(
//                       Icons.key,
//                     ), // Replace with your icon
//                     Text(
//                       'Account',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                         child: MyTextField(
//                             controller: usernameController,
//                             hintText: "Username",
//                             keyboardType: TextInputType.text,
//                             headingText: "Username")),
//                     Expanded(
//                         child: MyTextField(
//                             controller: PasswordController,
//                             hintText: "Password",
//                             keyboardType: TextInputType.text,
//                             headingText: "Password")),
//                   ],
//                 ),
//                 MyTextField(
//                     controller: confirmPasswordController,
//                     hintText: "Confirm Password",
//                     keyboardType: TextInputType.text,
//                     headingText: "Confirm Password",
                    
//                     )

//                 // Add more widgets below if needed
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
