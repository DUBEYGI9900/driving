// import 'package:flutter/material.dart';

// class register_gender extends StatefulWidget {
//   const register_gender({super.key});

//   @override
//   State<register_gender> createState() => _register_genderState();

// }

// class _register_genderState extends State<register_gender> {
//   final _productsizedlist = ["male", "female", "other"];

// String _selectedval = "male";

//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       padding: EdgeInsets.all(10.0), // Adjust the padding as needed
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Colors.black, // Border color
//           width: 1.0, // Border width
//         ),
//         borderRadius: BorderRadius.circular(4.0), // Border radius
//       ),
//       child: DropdownButton<String>(
//         value: _selectedVal,
//         items: _productsizedlist.map((e) {
//           return DropdownMenuItem(
//             child: Text(e),
//             value: e,
//           );
//         }).toList(),
//         onChanged: (val) {
//           // Use setState to update the selected value.
//           setState(() {
//             _selectedVal = val!;
//           });
//         },
//         style: TextStyle(
//           color: Colors.black, // Text color inside the dropdown
//           fontSize: 16.0, // Text size inside the dropdown
//         ),
//         // Set to true to make the dropdown button autofocused
//         selectedItemBuilder: (BuildContext context) {
//           return _productsizedlist.map<Widget>((String item) {
//             return Text(
//               item,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold, // Selected item font weight
//               ),
//             );
//           }).toList();
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class register_gender extends StatefulWidget {
  const register_gender({super.key});

  @override
  State<register_gender> createState() => register_genderState();
}

class register_genderState extends State<register_gender> {
  final _rolesizedlist = [
    "Student",
    "Instructor",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "Role", // Display heading text
            style: TextStyle(
              fontSize: 16, // You can adjust the font size as needed
              fontWeight: FontWeight.bold, // You can apply other styles too
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: DropdownButtonFormField<String>(
            items: _rolesizedlist.map((e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,
              );
            }).toList(),
            onChanged: (val) {},
            selectedItemBuilder: (BuildContext context) {
              return _rolesizedlist.map<Widget>((String item) {
                return Text(
                  item,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold, // Selected item font weight
                  ),
                );
              }).toList();
            },
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(8), // Adjust the padding as needed
              border: OutlineInputBorder(),
              hintText: "Select",
              hintStyle: TextStyle(color: Colors.black),
              filled: true,       
              fillColor: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ],
    );
  }
}
