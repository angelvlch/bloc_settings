import 'package:bloc_settings/sign_in.dart';
import 'package:bloc_settings/widgets/custom_button.dart';
import 'package:bloc_settings/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwodController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  String email = "", password = "", name = "";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/image/car.PNG', fit: BoxFit.fitWidth),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: nameController,
                        hintText: 'Name',
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: emailController,
                        hintText: 'Email',
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: passwodController,
                        hintText: 'Password',
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: CustomButton(
                          title: 'Sign Up',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                name = nameController.text;
                                email = emailController.text;
                                password = passwodController.text;
                              });
                              registration();
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 35),
                      const Text(
                        'or Login with',
                        style: TextStyle(
                          color: Color(0xFF273671),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: () {},
                            child: Image.asset(
                              'assets/image/google.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: () {},
                            child: Image.asset(
                              'assets/image/apple1.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                color: Color(0xFF273671),
                                fontSize: 22,
                              ),
                            ),
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignInScreen()),
                                    );
                                  },
                                text: 'Login',
                                style: const TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFF273671),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
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

  void registration() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
            e.code,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      );
    }
  }
}
