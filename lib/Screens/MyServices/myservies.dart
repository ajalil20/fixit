import 'package:fixit/Screens/MyServices/MyBids/mybids.dart';
import 'package:fixit/Screens/MyServices/MyServices/myservicestab.dart';
import 'package:fixit/Shared/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class Myservices extends StatefulWidget {
  @override
  _MyservicesState createState() => _MyservicesState();
}

class _MyservicesState extends State<Myservices> {
  int currentdot = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: UserNavBar(1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children : [
              GestureDetector(
                onTap: () {
//                Navigator.of(context).push(MaterialPageRoute(
//                    builder: (context) => Splashscreen1()));
                },          child:
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffC19741),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(00),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),

                child:           Padding(
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



                                "My Services",



                                textAlign: TextAlign.start,



                                style: GoogleFonts.poppins(



                                  color: currentdot == 0? Colors.white : Colors.white,



                                  fontSize: ScreenUtil().setSp(15.0),



                                  fontWeight: FontWeight.w400,



                                  letterSpacing: 0.30,



                                ),),
                              currentdot == 0? Container(
                                color: Colors.white,
                                width: ScreenUtil().setWidth(80.0),

                                height: ScreenUtil().setHeight(2.0),
                              ) : Container(),

                            ]),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentdot = 1;
                            });

                          }, child :
                        Column(
                            children: [
                              Text(



                                "My Bids",



                                textAlign: TextAlign.start,



                                style: GoogleFonts.poppins(



                                  color: Colors.white,



                                  fontSize: ScreenUtil().setSp(15.0),



                                  fontWeight: FontWeight.w400,



                                  letterSpacing: 0.30,



                                ),) ,
                              currentdot == 1?   Container(
                                color: Colors.white,
                                width: ScreenUtil().setWidth(80.0),

                                height: ScreenUtil().setHeight(2.0),
                              ) : Container(),

                            ]),
                        )
                      ],
                    )
                ),

              ),
              ),
              currentdot == 0 ? Myservicestab() : Mybids()
            ]
            ,
          ),
        ),
      ),
    );
  }
}
