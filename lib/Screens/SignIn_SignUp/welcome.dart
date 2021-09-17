import 'package:fixit/Screens/SignIn_SignUp/signin.dart';
import 'package:fixit/Screens/SignIn_SignUp/signup.dart';
import 'package:fixit/Shared/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  height:  ScreenUtil().setHeight(400.0),
                  width: double.infinity,
                  alignment: Alignment.center,
                  color: Color(0xffC19741),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: ScreenUtil().setHeight(380.0),
                      width: double.infinity,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                        borderRadius: new BorderRadius.all(const Radius.circular(10.0)),

                        ),
                    alignment: Alignment.center,
                      child: Image.asset("assets/welcome.png"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,

                  child: Container(
                    height:  ScreenUtil().setHeight(390.0),
//                    width: double.infinity,
//                  width: 5=100,

                    decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        )),
//                  alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30,left: 30),
                            child: Text(
                            "FIXIT!",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                color: Color(0xff111111),
                                fontSize: 27.0,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.30,

                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:  ScreenUtil().setHeight(50.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => Signin()));
                              },
                              child: Custombutton(buttontext: "LOGIN", bordercolor: Color(0xffC19741),buttoncolor: Colors.white, txtcolor: Color(0xffC19741))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40,),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => Signup()));
                              },
                              child: Custombutton(buttontext: "REGISTER", bordercolor: Color(0xffC19741),buttoncolor: Color(0xffC19741), txtcolor: Colors.white,)),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
