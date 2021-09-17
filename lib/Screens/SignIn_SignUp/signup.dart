import 'package:fixit/Screens/SignIn_SignUp/signin.dart';
import 'phoneverification.dart';
import 'package:fixit/Shared/button.dart';
import 'package:fixit/Shared/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = new TextEditingController();
  TextEditingController firstname = new TextEditingController();
  TextEditingController lastname = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();
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
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => Signin()));
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

                            },
                            child: Custombutton(buttontext: "SIGNUP", bordercolor: Color(0xffC19741),buttoncolor: Color(0xffC19741), txtcolor: Colors.white,))),
                  ],
                ),
              ),
              InputFieldArea(hint: "FIRST NAME", obscure: false, icon: Icons.person_outline_outlined, controllerval: firstname),
              InputFieldArea(hint: "LAST NAME", obscure: false, icon: Icons.person_outline_outlined, controllerval: lastname),
              InputFieldArea(hint: "EMAIL ADDRESS", obscure: false, icon: Icons.email_outlined, controllerval: email),
              InputFieldArea(hint: "PHONE NUMBER", obscure: false, icon: Icons.call_outlined, controllerval: phonenumber),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                  child: Text(
                    "After you continue, we will send you a code by\ntext to verify this phone number",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.30,

                    ),),
                ),
              ),
              InputFieldArea(hint: "PASSWORD", obscure: false, icon: Icons.visibility_off_outlined, controllerval: phonenumber),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                  child: Text(
                    "Minimum 8 characters (mixture of letters, numbers)",
                    textAlign: TextAlign.start,
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
                          MaterialPageRoute(builder: (context) => Phoneverification()));
                    },
                    child: Custombutton(buttontext: "REGISTER NOW", bordercolor: Color(0xffC19741),buttoncolor: Color(0xffC19741), txtcolor: Colors.white,)),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                  child: Text(
                    "OR SIGN UP WITH",
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
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
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
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                  child: Text(
                    "By creating a new account\n Privacy",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.30,

                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
