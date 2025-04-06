// ignore_for_file: library_private_types_in_public_api

import 'package:coffeeapp/components/password_text_form_field.dart';
import 'package:coffeeapp/components/text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/images/coffee_image.png")),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  "Let’s create you an account.",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      label: "Phone Number",
                      icon: Icons.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your phone number";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    PasswordTextFormField(
                      controller: passwordController,
                      label: "Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                        if (value.length < 8) {
                          return "Minimum character length is 8";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    PasswordTextFormField(
                      label: "Re-Password",
                      validator: (value) {
                        if (passwordController.text.isNotEmpty &&
                            value != passwordController.text) {
                          return "Passwords don't match";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/forgotpassword");
                  },
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Color(0xffA97C37),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xffA97C37),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildSignUpButton(context, () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, "/home");
                }
              }),
              const SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signin");
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xffA97C37),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffA97C37),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpButton(BuildContext context, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff55433C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: Color(0xffA97C37),
              child: Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
