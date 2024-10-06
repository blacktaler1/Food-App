import 'package:flutter/material.dart';
import 'package:foodapp/component/my_button.dart';
import 'package:foodapp/component/my_textfield.dart';
import 'package:foodapp/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirPasswordController = TextEditingController();
 
  void register() async {
    final authService = AuthService();
    
    if(passwordController.text == confirPasswordController.text) {
      try{
        await authService.signInWithEmailPassword(emailController.text, passwordController.text,);
      }
      catch (e) {
        // ignore: use_build_context_synchronously
        showDialog(context: context, builder: (context) => AlertDialog(
          title: Text("$e xato" ),
        ));
      }
    }else{
        showDialog(context: context, builder: (context) => const AlertDialog(
          title: Text("Password dont match!"),
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
              'Let`s create account',
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
             //confirfpassword textfield,
            MyTextfield(
                controller: confirPasswordController,
                hintText: 'Confirm password',
                obscureText: true),
            const SizedBox(
              height: 25,
            ),
            //sign un button
            MyButton(
              text: 'Sign Up',
              onTap: register
            ),
            const SizedBox(
              height: 25,
            ),

            //sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Login now!',
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