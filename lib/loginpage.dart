import 'package:flutter/material.dart';
import 'package:mobile/components/myButton.dart';

import 'components/textfield.dart';

void main() {
  runApp(
    MaterialApp(home: Loginpage()),
  );
}

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  void userSignedIn() {}
  final useNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[3000],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Icon(Icons.lock, size: 50),
              Text(
                'Welcome back, Login to Continue',
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(height: 25),
              myTextfield(
                controller: useNameController,
                hintText: 'User name',
                obscureText: false,
              ),
              myTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text('Forgot Password ?'),
                  ),
                ],
              ),
              myButton(
                onTap: userSignedIn,
              ),
              const SizedBox(height: 25),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.9,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Or signin with"),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.9,
                      color: Colors.black,
                    ),
                  )
                ],
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.apple, size: 80),
                ),
              ],)




            ],
          ),
        ),
      ),
    );
  }
}
