import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Custombutton extends StatefulWidget {
  String buttontext = '';
  Color txtcolor, buttoncolor,  bordercolor ;
  Custombutton({required this.buttontext,required this.buttoncolor,required this.bordercolor,required this.txtcolor });

  @override
  _CustombuttonState createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  @override
  Widget build(BuildContext context) {
    return (new Container(
      height: ScreenUtil().setHeight(60.0),
      width: ScreenUtil().setWidth(300.0),
      alignment: FractionalOffset.center,
      decoration: new BoxDecoration(
        color: widget.buttoncolor,
        borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
        border: Border.all(
          color: widget.bordercolor
        )
      ),
      child: new Text(
        widget.buttontext,
        style: GoogleFonts.poppins(
          color: widget.txtcolor,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.30,

        ),
      ),
    ));
  }
}