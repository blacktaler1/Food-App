import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/pages/homepage.dart';
import 'package:foodapp/services/auth/login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot) {
        if(snapshot.hasData) {
          return const Homepage();
        }else{
          return const LoginOrRegister();
        }
      }),
    );
  }
}