import 'package:flutter/material.dart';
import 'package:foodapp/component/my_button.dart';
import 'package:foodapp/component/my_textfield.dart';

import 'package:foodapp/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  //login method

  void login() async {
    // ignore: no_leading_underscores_for_local_identifiers
    final _authService = AuthService();

    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }
    catch (e) {
      // ignore: use_build_context_synchronously
      showDialog(context: context, builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            //messege, app slogan
            Text(
              'Food Delivery App',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //email textfield
            MyTextfield(
                controller: emailController,
                hintText: 'Email',
                obscureText: false),
            const SizedBox(
              height: 25,
            ),

            //password textfield,
            MyTextfield(
                controller: passwordController,
                hintText: 'Write password',
                obscureText: true),
            const SizedBox(
              height: 25,
            ),
            //sign in button
            MyButton(
              text: 'Sign In',
              onTap: login,
            ),
            const SizedBox(
              height: 25,
            ),

            //register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Register now!',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
