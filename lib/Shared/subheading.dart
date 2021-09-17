import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Subheading extends StatefulWidget {
  String title;
  Subheading({required this.title});
  @override
  _SubheadingState createState() => _SubheadingState();
}

class _SubheadingState extends State<Subheading> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(
        color: Color(0xffC19741),
        fontSize: 12.0,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.30,

      ),);
  }
}
