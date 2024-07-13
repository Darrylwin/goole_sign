import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // this user
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          ),
        ],
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "LOGED IN AS : ${user.email!}",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
