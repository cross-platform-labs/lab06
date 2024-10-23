import 'package:flutter/material.dart';
import 'package:lab06/widgets/MyFlutterLogo.dart';
import 'package:lab06/widgets/MyTextField.dart';
import 'package:lab06/widgets/reset_password_screen.dart';
import 'package:lab06/widgets/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Logo
                MyFlutterLogo(width: 200),
                const SizedBox(height: 20),

                //Email input
                MyTextField(label: 'Email'),
                const SizedBox(height: 20),

                //Password input
                MyTextField(label: 'Password'),
                const SizedBox(height: 20),

                //Sign up button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()))
                    },
                    style: const ButtonStyle(
                        padding: WidgetStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(vertical: 24))),
                    child: const Text('Sign up'),
                  ),
                ),
                const SizedBox(height: 20),

                //Login and reset buttons container
                Row(
                  children: [
                    //Login button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => {
                          showDialog(
                            context: context,
                            builder: (BuildContext ctx) {
                              return const AlertDialog(
                                title: Text('Message'),
                                content: Text("Need to implement"),
                              );
                            },
                          )
                        },
                        style: const ButtonStyle(
                            padding: WidgetStatePropertyAll<EdgeInsets>(
                                EdgeInsets.symmetric(vertical: 24))),
                        child: const Text('Login'),
                      ),
                    ),

                    const SizedBox(width: 16),

                    //Reset button
                    Expanded(
                      child: TextButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ResetPasswordScreen()))
                        },
                        style: const ButtonStyle(
                            padding: WidgetStatePropertyAll<EdgeInsets>(
                                EdgeInsets.symmetric(vertical: 24))),
                        child: const Text('Reset password'),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
