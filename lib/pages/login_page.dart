import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goole_sign/components/my_button.dart';
import 'package:goole_sign/components/my_textfield.dart';
import 'package:goole_sign/components/square_tile.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop loading circle
      Navigator.pop(context);
      // show error message
      showErrorMessage(e.code);
    }
  }

  // error message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            // permettant de scroller quand l'affichage depasse le nombre de pixels de l'appareil
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                // logo
                const Center(
                  child: Icon(
                    Icons.lock,
                    size: 100,
                  ),
                ),

                const SizedBox(
                  height: 20,
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
                  controller: emailController,
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
                  onTap: signUserIn,
                ),

                const SizedBox(
                  height: 30,
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

                const SizedBox(
                  height: 25,
                ),

                // google - apple sign in button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    SquareTile(
                      imagePath: 'assets/images/google.png',
                    ),

                    SizedBox(
                      width: 25,
                    ),

                    // google button
                    SquareTile(
                      imagePath: 'assets/images/apple.png',
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                // not a member ? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member ?",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        "Register now",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
