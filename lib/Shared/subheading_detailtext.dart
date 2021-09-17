import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SubheadingDetail extends StatefulWidget {
  String detailtext;
  SubheadingDetail({required this.detailtext});
  @override
  _SubheadingDetailState createState() => _SubheadingDetailState();
}

class _SubheadingDetailState extends State<SubheadingDetail> {
  @override
  Widget build(BuildContext context) {
    return Text(



      widget.detailtext,



      textAlign: TextAlign.start,



      style: GoogleFonts.poppins(



        color: Colors.black,



        fontSize: ScreenUtil().setSp(15.0),



        fontWeight: FontWeight.w400,



        letterSpacing: 0.30,



      ),);
  }
}
