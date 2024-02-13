import 'package:flutter/material.dart';

void main() {
  runApp(
   const  MaterialApp(home: Loginpage()),
  );
}

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[3000],
      body:  SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Icon(Icons.lock, size: 100),
              Text(
                'Welcome back, Login to Continue',
                 style: TextStyle(color: Colors.grey[700]),

              ),
              const SizedBox(height: 25 ),
               Padding(
                 padding: const EdgeInsets.all(25.0),
                 child: TextField(
                   decoration: InputDecoration(
                     enabledBorder: const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.grey),
                     ),
                         focusedBorder :  OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey.shade400)
                   ),
                               )
                               ),
               )
            ],

          ),
        ),
      ),
    );
  }
}
