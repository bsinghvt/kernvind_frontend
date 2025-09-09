import 'package:flutter/material.dart';

class AppGradientButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double? buttonWidth;
  const AppGradientButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          )),
    );
  }
}
