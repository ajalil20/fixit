import 'package:fixit/Screens/MyServices/MyServices/myservicestab.dart';
import 'package:fixit/Screens/MyServices/myservies.dart';

import 'package:fixit/Screens/SignIn_SignUp/signup.dart';
import '../Home/home.dart';
import 'package:fixit/Shared/button.dart';
import 'package:fixit/Shared/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xffC19741),
                child: Row(
                  children: [
                    Container(
decoration: BoxDecoration(
    border: Border.all(
        color: Colors.white
    )
),
                        width: MediaQuery.of(context).size.width*0.5,
                        child: GestureDetector(
                            onTap: () {
                            },
                            child: Custombutton(buttontext: "SIGNIN", bordercolor: Color(0xffC19741),buttoncolor: Color(0xffC19741), txtcolor: Colors.white,))
                    ),

                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white
                            )
                        ),
                        width: MediaQuery.of(context).size.width*0.5,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => Signup()));
                            },
                            child: Custombutton(buttontext: "SIGNUP", bordercolor: Color(0xffC19741),buttoncolor: Color(0xffC19741), txtcolor: Colors.white,))),
                  ],
                ),
              ),
              InputFieldArea(hint: "PHONE NUMBER OR EMAIL", obscure: false, icon: Icons.email_outlined, controllerval: email),
              InputFieldArea(hint: "PASSWORD", obscure: true, icon: Icons.visibility_off_outlined, controllerval: password),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Text(
              "FORGOT PASSWORD ?",
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
                padding: const EdgeInsets.all(30.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()
                          ));
                    },
                    child: Custombutton(buttontext: "CONTINUE", bordercolor: Color(0xffC19741),buttoncolor: Color(0xffC19741), txtcolor: Colors.white,)),
              ),

              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Text(
                    "OR LOG IN WITH",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Color(0xffC19741),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.30,

                    ),),
                ),
              ),

              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Text(
                    "GOOGLE ICON",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Color(0xffC19741),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.30,

                    ),),
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
