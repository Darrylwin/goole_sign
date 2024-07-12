import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            // logo
            const Center(
              child: Icon(
                Icons.lock,
                size: 100,
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            // welcome back you have been missed
            Text(
              "welcome back you've been missed",
              style: TextStyle(color: Colors.grey[700],
              fontSize: 16),
            ),

            const SizedBox(
              height: 25,
            ),

            // username textfiled

            // password textfield

            // forgot password

            // sign in button

            // or contiue with

            // google - apple sign in button

            // not a member ? register now
          ],
        ),
      ),
    );
  }
}
