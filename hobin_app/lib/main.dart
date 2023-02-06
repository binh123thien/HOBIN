import 'package:flutter/material.dart';
import 'package:hobin_app/pages/auth/ForgotPass.dart';
import 'package:hobin_app/pages/auth/SignIn.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Hobin',
    debugShowCheckedModeBanner: false,
    home: ForgotPass(),
  ));
}
