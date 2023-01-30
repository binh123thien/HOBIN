// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => HeaderState();
}

class HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const SizedBox(
            width: 100.0,
          ),
          const Icon(Icons.favorite_rounded,
          color: Colors.white,
          ),
          const SizedBox(
            width: 10.0,  
          ),
          Text(
            'Freelancer',
            style: GoogleFonts.poppins(color: Colors.white,fontSize: 18.0),
          ),
          const SizedBox(
            width: 250,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const HeaderNav(text: 'HOME', selected: true),
              const SizedBox(width: 40,),
              const HeaderNav(text: 'ABOUT US', selected: false),
              const SizedBox(width: 40,),
              const HeaderNav(text: 'DOWNLOAD ANDROID/IOS', selected: false),
              const SizedBox(width: 40,),
              const HeaderNav(text: 'CONTACT', selected: false),
            ],
          ),
          const SizedBox(width: 200,),
          Row(
            children: [
              Text(
                'SIGNUP',
                style: GoogleFonts.poppins(fontSize: 15,color: Colors.white),
              ),
              const SizedBox(width: 10,),
              Container(height: 20,width: 1, color: Colors.white,),
              const SizedBox(width: 10,),
              Text(
                'SIGNIN',
                style: GoogleFonts.poppins(fontSize: 15,color: Colors.white),
              ),
            ],)
      ]),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;
  const HeaderNav({super.key, required this.text, required this.selected});

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
        ),
        widget.selected? const SizedBox(height: 5,): const SizedBox(),
        widget.selected? const CircleAvatar(backgroundColor: Colors.white,radius: 2,): const SizedBox(),
      ],
    );
  }
}