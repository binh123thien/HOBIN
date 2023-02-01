import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hobin_app/src/Header.dart';
import 'package:hobin_app/src/ProfileImage.dart';

import 'pages/auth/signup.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
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
      body: SizedBox(
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
                        height: 600,
                        width: MediaQuery.of(context).size.width*0.45,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi/6),
                              child: Container(
                              height: 350,
                              width: 700,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(300)),
                            ),
                          ),
                          Positioned(
                              top: 200,
                              left: 100,
                              child: Container(
                                height: 400,
                                width: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Manage on your',
                                      style: GoogleFonts.poppins(
                                          fontSize: 38,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Projects is one place',
                                      style: GoogleFonts.poppins(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 20),
                                    SizedBox(
                                      width: 300,
                                      child: Text(
                                        'Describe your project and find a top tailent team around',
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 230,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "enter your email",
                                                hintStyle: GoogleFonts.poppins(
                                                    fontSize: 12),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50))),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        TextButton(
                                            style: TextButton.styleFrom(
                                                backgroundColor: Colors.black87,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50))),
                                            onPressed: () {},
                                            child: Container(
                                              height: 45,
                                              width: 100,
                                              child: Center(
                                                  child: Text(
                                                'Get invited',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              )),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 600,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ProfileImage(),
                        ],
                      ),
                    )
                  ],
                ),
                const Header(),
              ],
            )
          ],
        )),
      ),
    );
  }
}
