import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final TextEditingController controller;
  final bool isObscureText;
  final int? maxLines;
  final String? Function(String?)? validator;

  const AppTextFormField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.validator,
      this.labelText,
      this.isObscureText = false,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(hintText: hintText, labelText: labelText),
        validator: validator,
        obscureText: isObscureText,
        maxLines: maxLines,
      ),
    );
  }
}
