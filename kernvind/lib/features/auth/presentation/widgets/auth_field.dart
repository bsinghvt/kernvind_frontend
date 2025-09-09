import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  final String? Function(String?)? validator;

  const AuthField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.validator,
      this.isObscureText = false});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(hintText: hintText),
        validator: validator,
        obscureText: isObscureText,
      ),
    );
  }
}
