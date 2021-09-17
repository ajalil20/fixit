import 'package:fixit/Screens/SignIn_SignUp/signup.dart';
import 'package:fixit/Shared/button.dart';
import 'package:fixit/Shared/mytextfield.dart';
import 'package:fixit/Shared/subheading.dart';
import 'package:fixit/Shared/subheading_detailtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskDetail extends StatefulWidget {
  @override
  _TaskDetailState createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
      child : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
   Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Subheading(
                  title: "Date posted"
              )
          ),

         Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              SubheadingDetail(
                detailtext: "Cleaning",
              ),


              Icon(Icons.chat,    color: Color(0xffC19741),),

            ],

          ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Subheading(
                title: "Description"
            )
        ),
        SubheadingDetail(
          detailtext: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa",
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Subheading(
                title: "Time"
            )
        ),
        SubheadingDetail(
          detailtext: "14:45pm"  ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Subheading(
                title: "Address"
            )
        ),
        SubheadingDetail(
          detailtext: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. ",
        ),

       Row( children: [
Container(
    width: ScreenUtil().setWidth(70.0),

    child: TextField()

),

         Padding(
           padding: const EdgeInsets.all(30.0),
           child: GestureDetector(
               onTap: () {

               },
               child: Container(

                   width: ScreenUtil().setWidth(170.0),

//                        height: ScreenUtil().setHeight(60.0),
                   child: Custombutton(buttontext: "Bid Submit", bordercolor: Color(0xffC19741),buttoncolor: Color(0xffC19741), txtcolor: Colors.white,))),
         ),
       ],)

      ],
    ));
  }
}
