import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone/features/auth/view/signup_view.dart';
import './theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Twitter Clone',
      theme: AppTheme.theme,
      home: const SignUpView(),
    );
  }
}
