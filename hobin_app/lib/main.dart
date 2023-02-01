import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hobin_app/src/Header.dart';
import 'package:hobin_app/src/ProfileImage.dart';

import 'pages/auth/signup.dart';
import 'responsive_widget.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUpPage(title: 'Sign Up',),
  ));
}


