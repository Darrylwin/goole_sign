import 'package:flutter/material.dart';
import 'package:goole_sign/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
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
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),

            const SizedBox(
              height: 25,
            ),

            // username textfiled
            MyTextfield(
              controller: usernameController,
              obscureText: false,
              hintText: "Username",
            ),

            const SizedBox(
              height: 10,
            ),

            // password textfield
            MyTextfield(
              controller: passwordController,
              obscureText: true,
              hintText: "Password",
            ),

            const SizedBox(
              height: 10,
            ),

            // forgot password
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),

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
