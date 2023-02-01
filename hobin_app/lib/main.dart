import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hobin_app/pages/auth/SignIn.dart';
import 'package:hobin_app/pages/auth/SignUp.dart';
import 'dart:ui';

void main() {
  runApp(const MaterialApp(
    title: 'Hobin',
    debugShowCheckedModeBanner: false,
    home: const SignInPage(),
  ));
}
