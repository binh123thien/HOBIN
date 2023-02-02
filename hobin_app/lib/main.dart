import 'package:flutter/material.dart';
import 'package:hobin_app/pages/auth/SignIn.dart';
import 'package:hobin_app/pages/auth/SignUp.dart';


void main() {
  runApp(const MaterialApp(
    title: 'Hobin',
    debugShowCheckedModeBanner: false,
    home: SignInPage(),
  ));
}
