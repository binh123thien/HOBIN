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
      color: Color(0xff373e98),
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
          )
      ]),
    );
  }
}