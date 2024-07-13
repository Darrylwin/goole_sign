import 'package:flutter/material.dart';
import 'package:goole_sign/components/my_button.dart';
import 'package:goole_sign/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // sign user in method
  SignUserIn() {}

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

            const SizedBox(
              height: 25,
            ),

            // sign in button
            MyButton(
              onTap: SignUserIn(),
            ),

            const SizedBox(
              height: 50,
            ),

            // or contiue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Or continue with",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),

            // google - apple sign in button

            // not a member ? register now
          ],
        ),
      ),
    );
  }
}
