import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Center(child: Image.asset("assets/images/coffee_image.png")),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    "Enter your email or phone number to reset your password.",
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                _buildTextField(
                  label: "Email or Phone Number",
                  icon: Icons.email,
                  controller: _inputController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email or phone number.";
                    }
                    if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                            .hasMatch(value) &&
                        !RegExp(r"^\d{10}$").hasMatch(value)) {
                      return "Please enter a valid email or phone number.";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                _buildResetPasswordButton(context),
                const SizedBox(height: 20),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Back to Sign In",
                      style: TextStyle(
                        color: Color(0xffA97C37),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffA97C37),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    required TextEditingController controller,
    required String? Function(String?) validator,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.black54),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      validator: validator,
    );
  }

  Widget _buildResetPasswordButton(BuildContext context) {
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
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // Logique pour envoyer une demande de réinitialisation
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Password reset link sent!")),
            );
          }
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Reset Password",
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