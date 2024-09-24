import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const CustomButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          const Color(0xFF273671),
        ),
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 15)),
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    );
  }
}
