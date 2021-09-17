import 'package:fixit/Screens/Home/jobdetails.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteContainer extends StatefulWidget {
  late IconData serviceicon;
  late String servicetype,servicetitle,location,servicetime,timeposted,clientbudget;
  InviteContainer({required this.serviceicon, required this.servicetype,required this.servicetitle,required this.location,required this.servicetime,required this.timeposted,required this.clientbudget});
  @override
  _InviteContainerState createState() => _InviteContainerState();
}

class _InviteContainerState extends State<InviteContainer> {
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Jobdetails()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child:   Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Row(

              children: [

                Padding(

                  padding: const EdgeInsets.only(right: 10),

                  child: Column(

                    children: [

                      Container(

                        width: ScreenUtil().setWidth(60.0),

                        height: ScreenUtil().setHeight(60.0),

                        decoration: new BoxDecoration(

                          color: Color(0xffC19741),

                          borderRadius: new BorderRadius.all(const Radius.circular(10.0)),

                          //            border: Border.all(

                          //                color: widget.bordercolor

                          //            )

                        ),

                        alignment: Alignment.center,

                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.center,

                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [

                            Icon(widget.serviceicon, color: Colors.white,),

                            Text(

                              widget.servicetype,

                              textAlign: TextAlign.center,

                              style: GoogleFonts.poppins(

                                color: Colors.white,

                                fontSize: ScreenUtil().setSp(12.0),

                                fontWeight: FontWeight.w400,

                                letterSpacing: 0.30,

                              ),)

                          ],

                        ),

                      )

                    ],

                  ),

                ),

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text(

                      widget.servicetitle,

                      textAlign: TextAlign.center,

                      style: GoogleFonts.poppins(

                        color: Colors.black,

                        fontSize: ScreenUtil().setSp(18.0),

                        fontWeight: FontWeight.w400,

                        letterSpacing: 0.30,

                      ),)

                    ,Row(

                      children: [

                        Icon(Icons.location_on_outlined,    color: Color(0xffC19741),),

                        Text(

                          widget.location,

                          textAlign: TextAlign.center,

                          style: GoogleFonts.poppins(

                            color: Colors.grey,

                            fontSize: ScreenUtil().setSp(14.0),

                            fontWeight: FontWeight.w400,

                            letterSpacing: 0.30,

                          ),)



                      ],

                    ),

                    Text(

                      widget.servicetime,

                      textAlign: TextAlign.center,

                      style: GoogleFonts.poppins(

                        color: Colors.black,

                        fontSize: ScreenUtil().setSp(12.0),

                        fontWeight: FontWeight.w400,

                        letterSpacing: 0.30,

                      ),)



                  ],

                ),

              ],

            ),

            Column(

              mainAxisAlignment: MainAxisAlignment.start,

              crossAxisAlignment: CrossAxisAlignment.start,



              children: [

                Row(
                  children: [
                    Icon(Icons.location_on_outlined,    color: Color(0xffC19741),),

                    Text(

                      "Area located",

                      textAlign: TextAlign.center,

                      style: GoogleFonts.poppins(

                        color: Colors.grey,

                        fontSize: ScreenUtil().setSp(15.0),

                        fontWeight: FontWeight.w400,

                        letterSpacing: 0.30,

                      ),),



                  ],
                ),


                Row(
                  children: [
                    Text(

                      "Client Budget",

                      textAlign: TextAlign.center,

                      style: GoogleFonts.poppins(

                        color: Colors.grey,

                        fontSize: ScreenUtil().setSp(11.0),

                        fontWeight: FontWeight.w400,

                        letterSpacing: 0.30,

                      ),),

                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [

                        Icon(Icons.attach_money_outlined,  size: ScreenUtil().setSp(16.0),  color: Color(0xffC19741),),

                        Text(

                          widget.clientbudget,

                          textAlign: TextAlign.center,

                          style: GoogleFonts.poppins(

                            color: Colors.grey,

                            fontSize: ScreenUtil().setSp(11.0),

                            fontWeight: FontWeight.w400,

                            letterSpacing: 0.30,

                          ),)



                      ],

                    ),
                  ],
                ),

              ],

            )

          ],

        ),
      ),
    );
  }
}
