// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back_ui.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85, 
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green[50], 
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/logo_ui.png',
                          height: 60,  
                        ),
                        SizedBox(width: 0), 
                        Expanded(
                        child: Text(
                          'Reset Password',
                          style: GoogleFonts.jomolhari(
                            textStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'email',
                      labelStyle: GoogleFonts.jomolhari(),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50), backgroundColor: Colors.black,
                      ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Password reset email sent!')),
                      );
                    },
                  child: Text(
                        'Submit',
                        style: GoogleFonts.jomolhari(
                          textStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}