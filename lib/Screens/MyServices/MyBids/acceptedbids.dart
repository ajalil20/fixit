import 'package:fixit/Screens/Home/jobdetails.dart';
import 'acceptedbidscontainer.dart';
import 'pendingbidscontainer.dart';
import 'package:fixit/Screens/SignIn_SignUp/signup.dart';

import 'package:fixit/Shared/button.dart';
import 'package:fixit/Shared/joblistingcontainer.dart';
import 'package:fixit/Shared/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Acceptedbids extends StatefulWidget {
  @override
  _AcceptedbidsState createState() => _AcceptedbidsState();
}

class _AcceptedbidsState extends State<Acceptedbids> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                      "Client Invite Listing",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Color(0xffC19741),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.30,

                      ),),
                  ),),
              ),



              AcceptedbidsContainer(serviceicon: Icons.ac_unit, servicetype: "Painter", servicetitle: "Worker needed", location: "Karachi", servicetime: "2 days", timeposted: "1 m ago", clientbudget: "900\$",bidapproved: "900\$",),
            ]
            ,
          ),
        ),
      ),
    );
  }
}
