import 'package:bloc_settings/firebase_options.dart';
import 'package:bloc_settings/forgot_password.dart';
import 'package:bloc_settings/home.dart';
import 'package:bloc_settings/sign_in.dart';
import 'package:bloc_settings/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Map<String, WidgetBuilder> get _routes {
    return {
      Routes.signUp: (context) => const SignUpScreen(),
      Routes.home: (context) => const HomeScreen(),
      Routes.signIn: (context) => const SignInScreen(),
      Routes.forgetPassword: (context) => const ForgetPasswordScreen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: _routes,
    );
  }
}

class Routes {
  Routes._();
  static const signUp = '/sign-up';
  static const home = '/home';
  static const signIn = '/';
  static const forgetPassword = '/forget-password';
}
