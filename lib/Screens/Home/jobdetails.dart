import 'ClientDetails.dart';
import 'package:fixit/Screens/SignIn_SignUp/signup.dart';
import 'TaskDetail.dart';
import 'package:fixit/Shared/button.dart';
import 'package:fixit/Shared/mytextfield.dart';
import 'package:fixit/Shared/subheading.dart';
import 'package:fixit/Shared/subheading_detailtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Jobdetails extends StatefulWidget {
  @override
  _JobdetailsState createState() => _JobdetailsState();
}

class _JobdetailsState extends State<Jobdetails> {
  int pageViewIndex = 0;
  PageController _pgController = PageController(initialPage: 0, keepPage: true);
  List pageContent = [ClientDetail(),TaskDetail()];
int currentdot = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffC19741),
        title: Text(
          "Job Details",
          style: GoogleFonts.poppins(
            color:  Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.30,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded)),
        elevation: 0,
      ),
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

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child:   Row(
                    children: [

                      Padding(

                        padding: const EdgeInsets.only(right: 10),

                        child: Column(

                          children: [

                            Container(

                              width: ScreenUtil().setWidth(60.0),

                              height: ScreenUtil().setHeight(60.0),

                              decoration: new BoxDecoration(

                                color: Colors.white,

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

                                  Icon(Icons.brush,
                                    color: Color(0xffC19741),
                                  ),

                                  Text(

                                    "Painting",

                                    textAlign: TextAlign.center,

                                    style: GoogleFonts.poppins(


                                      color: Color(0xffC19741),


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

                              color: Colors.white,

                              fontSize: ScreenUtil().setSp(18.0),

                              fontWeight: FontWeight.w400,

                              letterSpacing: 0.30,

                            ),),
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [

                              Icon(Icons.attach_money_outlined,    color: Colors.white,),

                              Text(

                                "500\$",

                                textAlign: TextAlign.center,

                                style: GoogleFonts.poppins(

                                  color: Colors.white,

                                  fontSize: ScreenUtil().setSp(14.0),

                                  fontWeight: FontWeight.w400,

                                  letterSpacing: 0.30,

                                ),)



                            ],

                          ),

                        ],

                      ),



                    ],

                  ),
                ),
              ),
        ),

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
          SubheadingDetail(
              detailtext: "Job Details"  ),
          currentdot == 0? Container(
            color: Color(0xffC19741),
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
      SubheadingDetail(
          detailtext: "Client Details"  ),
    currentdot == 1?   Container(
         color: Color(0xffC19741),
         width: ScreenUtil().setWidth(80.0),

         height: ScreenUtil().setHeight(2.0),
       ) : Container(),

     ]),
      )
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
                    Container(
                      width: double.infinity,
                    child:   ClientDetail(),
                    ),
                    Container(
                      width: double.infinity,
                     child: TaskDetail(),
                    )

                  ],
                ),
              ),


            ]
            ,
          ),
        ),
      ),
    );
  }
}
