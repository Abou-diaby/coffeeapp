import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  final String? Function(String?)? validator;
  final String? label;
  final TextEditingController? controller;

  const PasswordTextFormField({
    super.key,
    this.validator,
    this.label,
    this.controller,
  });

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      validator: widget.validator,
      decoration: InputDecoration(
        labelText: widget.label ?? "Password",
        prefixIcon: Image.asset(
          "assets/icons/Password.png",
          width: 30,
          height: 30,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.black54,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
