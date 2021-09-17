import 'package:fixit/Screens/SignIn_SignUp/signup.dart';
import 'package:fixit/Shared/button.dart';
import 'package:fixit/Shared/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Phoneverification extends StatefulWidget {
  @override
  _PhoneverificationState createState() => _PhoneverificationState();
}

class _PhoneverificationState extends State<Phoneverification> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffC19741),
        title: Text(
        "PHONE VERIFICATION",
        style: GoogleFonts.poppins(
        color:  Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.30,
    ),
      ),
      leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded)),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Icon(Icons.phone_android_outlined, size: 60,  color: Color(0xffC19741),)),
            ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text(
                    "Please enter",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
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
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Custombutton(buttontext: "REGISTER NOW", bordercolor: Color(0xffC19741),buttoncolor: Color(0xffC19741), txtcolor: Colors.white,)),
              ),

              Padding(
                padding: const EdgeInsets.all(0.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child:  Text(
                      "RESEND CODE",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Color(0xffC19741),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.30,

                      ),),),
              ),



            ]
            ,
          ),
        ),
      ),
    );
  }
}
