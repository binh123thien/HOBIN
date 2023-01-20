import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hobin_app/src/Header.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(

                      )
                    ],
                  ),
                  Header(),
                ],
              )
            ],
          ) 
          ),
      ),
    );
  }
}