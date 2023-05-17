import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone/common/rounded_small_button.dart';
import 'package:flutter_twitter_clone/constants/ui_constants.dart';
import 'package:flutter_twitter_clone/theme/theme.dart';

import '../widgets/auth_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appBar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                //text field 1
                AuthField(controller: emailController, hintText: 'Email address'),
                const SizedBox(height: 25),
                AuthField(controller: passwordController, hintText: 'Password'),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    onTap: () {},
                    label: "Done",
                  ),
                ),
                const SizedBox(height: 25),
                RichText(
                  text: TextSpan(
                    text: "Don't have an account?",
                    style: const TextStyle(fontSize: 16),
                    children: const [
                      TextSpan(
                        text: " Sign up",
                        style: TextStyle(color: Pallete.blueColor, fontSize: 16),
                      ),
                    ],
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
