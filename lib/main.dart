import 'package:coffeeapp/pages/signin_page.dart';
import 'package:coffeeapp/pages/signup_page.dart';
import 'package:flutter/material.dart';

import 'pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Create By DIABY CEO of MU
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Coffee App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WelcomePage(),
      routes: {
        "/signin": (context) => const SignInPage(),
        "/signup": (context) => const SignUpPage(),
      },
    );
  }
}
