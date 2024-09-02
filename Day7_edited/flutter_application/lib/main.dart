// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'forget_password_screen.dart';
import 'sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/forget_password': (context) => ForgetPasswordScreen(),
        '/sign_up': (context) => SignUpScreen(),
      },
    );
  }
}
