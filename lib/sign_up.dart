import 'package:bloc_settings/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset('assets/image/car.PNG'),
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  CustomTextField(
                    hintText: 'name',
                  ),
                  SizedBox(height: 25),
                  CustomTextField(hintText: 'email'),
                  SizedBox(height: 25),
                  CustomTextField(hintText: 'password'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
