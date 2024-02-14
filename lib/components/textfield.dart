import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const  MaterialApp(home: Loginpage()),
//   );
// }

// ignore: camel_case_types
class myTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const myTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400)),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: hintText)),
    );
  }
}
