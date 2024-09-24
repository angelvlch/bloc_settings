import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.onTap,
      required this.controller});
  final String hintText;
  final VoidCallback onTap;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $hintText ';
        }
        return null;
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        hintStyle: TextStyle(color: Colors.grey.shade500),
      ),
    );
  }
}
