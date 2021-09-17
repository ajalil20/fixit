import 'package:fixit/Screens/MyServices/MyServices/invite.dart';
import 'package:fixit/Screens/MyServices/MyServices/pending.dart';

import '../MyBids/acceptedbids.dart';
import '../MyBids/pendingbids.dart';
import 'package:fixit/Shared/button.dart';
import 'package:fixit/Shared/mytextfield.dart';
import 'package:fixit/Shared/subheading.dart';
import 'package:fixit/Shared/subheading_detailtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'accepted.dart';

class Myservicestab extends StatefulWidget {
  @override
  _MyservicestabState createState() => _MyservicestabState();
}

class _MyservicestabState extends State<Myservicestab> {
  int currentdot = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children : [
//        GestureDetector(
//          onTap: () {
////                Navigator.of(context).push(MaterialPageRoute(
////                    builder: (context) => Splashscreen1()));
//          },          child:
//        Container(
//          width: double.infinity,
//          decoration: BoxDecoration(
//              color: Color(0xffC19741),
//              borderRadius: BorderRadius.only(
//                topLeft: Radius.circular(00),
//                topRight: Radius.circular(0),
//                bottomLeft: Radius.circular(30),
//                bottomRight: Radius.circular(30),
//              )),
//
//          child:           Padding(
//              padding: const EdgeInsets.symmetric(vertical: 20),
//              child:
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: [
//                  GestureDetector(
//                    onTap: () {
//                      setState(() {
//                        currentdot = 0;
//                      });
//
//                    },  child :   Column(
//                      children: [
//                        Text(
//
//
//
//                          "My Services",
//
//
//
//                          textAlign: TextAlign.start,
//
//
//
//                          style: GoogleFonts.poppins(
//
//
//
//                            color: currentdot == 0? Colors.white : Colors.white,
//
//
//
//                            fontSize: ScreenUtil().setSp(15.0),
//
//
//
//                            fontWeight: FontWeight.w400,
//
//
//
//                            letterSpacing: 0.30,
//
//
//
//                          ),),
//                        currentdot == 0? Container(
//                          color: Colors.white,
//                          width: ScreenUtil().setWidth(80.0),
//
//                          height: ScreenUtil().setHeight(2.0),
//                        ) : Container(),
//
//                      ]),
//                  ),
//                  GestureDetector(
//                    onTap: () {
//                      setState(() {
//                        currentdot = 1;
//
//                      });
//
//                    }, child :
//                  Column(
//                      children: [
//                        Text(
//
//
//
//                          "My Bids",
//
//
//
//                          textAlign: TextAlign.start,
//
//
//
//                          style: GoogleFonts.poppins(
//
//
//
//                            color: Colors.white,
//
//
//
//                            fontSize: ScreenUtil().setSp(15.0),
//
//
//
//                            fontWeight: FontWeight.w400,
//
//
//
//                            letterSpacing: 0.30,
//
//
//
//                          ),),
//                        currentdot == 1?   Container(
//                          color: Colors.white,
//                          width: ScreenUtil().setWidth(80.0),
//
//                          height: ScreenUtil().setHeight(2.0),
//                        ) : Container(),
//
//                      ]),
//                  )
//                ],
//              )
//          ),
//
//        ),
//        ),
//

        Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentdot = 0;
                    });

                  },  child :   Column(
                    children: [
                      Text(



                        "Invite",



                        textAlign: TextAlign.start,



                        style: GoogleFonts.poppins(



                          color: currentdot == 0? Colors.black : Colors.grey,



                          fontSize: ScreenUtil().setSp(15.0),



                          fontWeight: FontWeight.w400,



                          letterSpacing: 0.30,



                        ),),
                      currentdot == 0? Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Container(
                          color: Color(0xffC19741),
                          width: ScreenUtil().setWidth(40.0),

                          height: ScreenUtil().setHeight(2.0),
                        ),
                      ) : Container(),

                    ]),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentdot = 1;
                    });

                  },  child :   Column(
                    children: [
                      Text(



                        "Accepted",



                        textAlign: TextAlign.start,



                        style: GoogleFonts.poppins(



                          color: currentdot == 1? Colors.black : Colors.grey,



                          fontSize: ScreenUtil().setSp(15.0),



                          fontWeight: FontWeight.w400,



                          letterSpacing: 0.30,



                        ),),
                      currentdot == 1? Container(
                        color: Color(0xffC19741),
                        width: ScreenUtil().setWidth(80.0),

                        height: ScreenUtil().setHeight(2.0),
                      ) : Container(),

                    ]),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentdot = 2;

                    });

                  }, child :
                Column(
                    children: [
                      Text(



                        "Pending",



                        textAlign: TextAlign.start,



                        style: GoogleFonts.poppins(



                          color: currentdot == 2? Colors.black : Colors.grey,



                          fontSize: ScreenUtil().setSp(15.0),



                          fontWeight: FontWeight.w400,



                          letterSpacing: 0.30,



                        ),),
                      currentdot == 2?   Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Container(
                          color: Color(0xffC19741),
                          width: ScreenUtil().setWidth(54.0),

                          height: ScreenUtil().setHeight(2.0),
                        ),
                      ) : Container(),

                    ]),
                ),

              ],
            )
        ),

        Container(
          height: MediaQuery.of(context).size.height,
          child:      PageView(
            onPageChanged: (val) {
              currentdot = val;
              setState(() {});
            },
            children: [

              Invite(),

                Accepted(),

              Pending(),

            ],
          ),
        ),


      ]
      ,
    );
  }
}
