import 'package:fixit/Screens/SignIn_SignUp/signup.dart';
import 'package:fixit/Shared/button.dart';
import 'package:fixit/Shared/mytextfield.dart';
import 'package:fixit/Shared/subheading.dart';
import 'package:fixit/Shared/subheading_detailtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientDetail extends StatefulWidget {
  @override
  _ClientDetailState createState() => _ClientDetailState();
}

class _ClientDetailState extends State<ClientDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children : [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(

                  children: [

                    Icon(Icons.location_on_outlined,    color: Color(0xffC19741),),

                    Text(

                      "Toronto",

                      textAlign: TextAlign.center,

                      style: GoogleFonts.poppins(

                        color: Colors.grey,

                        fontSize: ScreenUtil().setSp(14.0),

                        fontWeight: FontWeight.w400,

                        letterSpacing: 0.30,

                      ),)



                  ],

                ),
                Row(

                  children: [

                    Icon(Icons.calendar_today,    color: Color(0xffC19741),),

                    Text(

                      "1 min ago",

                      textAlign: TextAlign.center,

                      style: GoogleFonts.poppins(

                        color: Colors.grey,

                        fontSize: ScreenUtil().setSp(14.0),

                        fontWeight: FontWeight.w400,

                        letterSpacing: 0.30,

                      ),)



                  ],

                ),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text(
                "Posted By",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  color: Color(0xffC19741),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.30,

                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:   Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                SubheadingDetail(
                  detailtext: "Alex Brown",
                ),


                Icon(Icons.chat,    color: Color(0xffC19741),),

              ],

            ),
          ),


          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Text(
                "Location",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  color: Color(0xffC19741),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.30,

                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
            child: Container(
                width: double.infinity,
                child:  SubheadingDetail(
                  detailtext: "Totonto",
                )
            ),),

          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Text(
                "Category",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  color: Color(0xffC19741),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.30,

                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
            child: Container(
                width: double.infinity,
                child:  SubheadingDetail(
                  detailtext: "Cleaning",
                )
            ),),
          Container(
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Subheading(
                    title: "Date posted"
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),                child: Container(   width: double.infinity,
              child: SubheadingDetail(
                detailtext: "22 August 2021 - 05:22am",
              )
          ),
          ),
    Padding(
            padding: const EdgeInsets.all(30.0),
            child: GestureDetector(
                onTap: () {

                },
                child: Container(

                    width: ScreenUtil().setWidth(170.0),

//                        height: ScreenUtil().setHeight(60.0),
                    child: Custombutton(buttontext: "Bid Submit", bordercolor: Color(0xffC19741),buttoncolor: Color(0xffC19741), txtcolor: Colors.white,))),
          ),

        ] );
  }
}
