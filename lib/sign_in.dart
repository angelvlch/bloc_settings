import 'package:bloc_settings/main.dart';
import 'package:bloc_settings/widgets/custom_button.dart';
import 'package:bloc_settings/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwodController = TextEditingController();

  String email = "", password = "";

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        //  resizeToAvoidBottomInset: true,
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
                          title: 'Sign In',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                email = emailController.text;
                                password = passwodController.text;
                              });
                              // registration();
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 35),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, Routes.signUp),
                        child: const Text(
                          'Forgot Password?',
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
                              text: 'Don' 't have an account? ',
                              style: TextStyle(
                                color: Color(0xFF273671),
                                fontSize: 22,
                              ),
                            ),
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                      context,
                                      Routes.signUp,
                                    );
                                   signIn();
                                  },
                                text: 'SignUp',
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
  
  void signIn() async{
    try{

    }
    cat
  }
}
