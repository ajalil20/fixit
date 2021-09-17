import 'package:fixit/Screens/Home/jobdetails.dart';
import 'package:fixit/Screens/MyServices/MyServices/pendingcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Pending extends StatefulWidget {
  @override
  _PendingState createState() => _PendingState();
}

class _PendingState extends State<Pending> {
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
                      "My Bids Listing",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Color(0xffC19741),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.30,

                      ),),
                  ),),
              ),



              PendingContainer(serviceicon: Icons.ac_unit, servicetype: "Painter", servicetitle: "Worker needed", location: "Karachi", servicetime: "2 days", timeposted: "1 m ago", clientbudget: "800\$",),
            ]
            ,
          ),
        ),
      ),
    );
  }
}
