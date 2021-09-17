import 'package:fixit/Screens/SignIn_SignUp/signup.dart';
import 'package:fixit/Shared/bottombar.dart';
import 'package:flutter/cupertino.dart';
import 'jobdetails.dart';
import 'package:fixit/Shared/button.dart';
import 'package:fixit/Shared/joblistingcontainer.dart';
import 'package:fixit/Shared/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffC19741),
        title: Text(
          "Hi Abdul",
          style: GoogleFonts.poppins(
            color:  Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.30,
          ),
        ),
        leading: GestureDetector(
//            onTap: (){
//              Navigator.pop(context);
//            },
            child: Container()),
elevation: 0,
      ),
           bottomNavigationBar: UserNavBar(0),
           body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    Column(
crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(



                          "Search Jobs",



                          textAlign: TextAlign.start,



                          style: GoogleFonts.poppins(



                            color: Colors.white,



                            fontSize: ScreenUtil().setSp(9.0),



                            fontWeight: FontWeight.w400,



                            letterSpacing: 0.30,



                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child :  Container(
                               width: ScreenUtil().setWidth(275.0),
                                height: ScreenUtil().setHeight(55.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        10
                                    )),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: ScreenUtil().setWidth(35.0),
                                        height: ScreenUtil().setHeight(50.0),
                                       
                                        alignment: Alignment.center,
                                        child:
                                  Icon(Icons.search,color: Color(0xffC19741),)),
                                    Container(
                                      width: ScreenUtil().setWidth(220.0),
                                      height: ScreenUtil().setHeight(50.0),
color: Colors.white,
                                      child: TextField(
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                         ),
                                      ),
                                    )

                                  ],
                                ),
                              )
                            ),
                            GestureDetector(
                              onTap: () {

                                },


                               child :
                      Container(

                        width: ScreenUtil().setWidth(55.0),
                        height: ScreenUtil().setHeight(55.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              10
                            )),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.filter_list,   color: Color(0xffC19741),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(



                                "Filter",



                                textAlign: TextAlign.start,



                                style: GoogleFonts.poppins(



                                  color: Color(0xffC19741),




                                  fontSize: ScreenUtil().setSp(9.0),



                                  fontWeight: FontWeight.w400,



                                  letterSpacing: 0.30,



                                ),),
                            ),
                          ],
                        ),
                      )
                            )
                          ],
                        ),
                      ],
                    ) ),

              ),




              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: GestureDetector(
                  onTap: () {
//                    Navigator.of(context).push(
//                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child:  Container(
width: double.infinity,
                    child: Text(
                      "Jobs Listing",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Color(0xffC19741),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.30,

                      ),),
                  ),),
              ),
              GestureDetector(
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

                      Icon(Icons.brush, color: Colors.white,),

                      Text(

                        "Painting",

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

                  "Carpenter table maker",

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

                Text(

                  "1 day Service",

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

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

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

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

                Icon(Icons.attach_money_outlined,    color: Color(0xffC19741),),

                Text(

                  "500\$",

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

      )

    ],

  ),
),
              ),
            JobListing(serviceicon: Icons.ac_unit, servicetype: "Painter", servicetitle: "Worker needed", location: "Karachi", servicetime: "2 days", timeposted: "1 m ago", servicecharges: "900\$"),
            ]
            ,
          ),
        ),
      ),
    );
  }
}
