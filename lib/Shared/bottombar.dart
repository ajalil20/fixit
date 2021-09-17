import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:fixit/Screens/Home/home.dart';
import 'package:fixit/Screens/MyServices/MyBids/mybids.dart';
import 'package:fixit/Screens/MyServices/MyServices/myservicestab.dart';
import 'package:fixit/Screens/MyServices/myservies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNavBar extends StatefulWidget {
  final int _currentIndex;

  UserNavBar(this._currentIndex);

  @override
  _UserNavBarState createState() => _UserNavBarState();
}

class _UserNavBarState extends State<UserNavBar> {
  List<String> msg = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomNavigationBar(

      iconSize: 25.0,
      selectedColor: Colors.white,
      strokeColor: Color(0x300c18fb),
      unSelectedColor: Colors.grey[400],

      backgroundColor: Colors.white,
      // borderRadius: Radius.circular(20.0),
      elevation: 0,
      items: [
        CustomNavigationBarItem(
          icon:  Icon(Icons.home_outlined),
selectedIcon: Container(
    width: ScreenUtil().setWidth(35.0),
    height: ScreenUtil().setHeight(50.0),

    decoration: BoxDecoration(
        color: Color(0xffC19741),
        borderRadius: BorderRadius.circular(
            3
        )),              child: Icon(Icons.home_outlined)),
          showBadge: false,
          title: Text("Homes"),

        ),
        CustomNavigationBarItem(
            icon: Icon(Icons.design_services_outlined),
             title: Text(
               "My Services",

             ),
            showBadge: false,
          selectedIcon: Container(
              width: ScreenUtil().setWidth(35.0),
              height: ScreenUtil().setHeight(50.0),

              decoration: BoxDecoration(
                  color: Color(0xffC19741),
                  borderRadius: BorderRadius.circular(
                      3
                  )),              child: Icon(Icons.design_services_outlined)),

        ),
        CustomNavigationBarItem(
          title: Text(
            "Contracts",

          ),
            icon: Icon(Icons.library_books),
          selectedIcon: Container(
              width: ScreenUtil().setWidth(35.0),
              height: ScreenUtil().setHeight(50.0),

              decoration: BoxDecoration(
                  color: Color(0xffC19741),
                  borderRadius: BorderRadius.circular(
                      3
                  )),              child: Icon(Icons.library_books)),

        ),
//        CustomNavigationBarItem(
//            title: Text(
//              "Chat",
//
//            ),
//
//            icon: Icon(Icons.chat_bubble_rounded),
//            showBadge: false),
        CustomNavigationBarItem(
            title: Text(
              "Profile",

            ),

            icon:  Icon(Icons.person_outline),
            selectedIcon: Container(
                width: ScreenUtil().setWidth(35.0),
                height: ScreenUtil().setHeight(50.0),

                decoration: BoxDecoration(
                    color: Color(0xffC19741),
                    borderRadius: BorderRadius.circular(
                        3
                    )),              child: Icon(Icons.person_outline)),
            showBadge: false),

      ],
      currentIndex: widget._currentIndex > 4 ? 0 : widget._currentIndex,
      onTap: (index) {
        if (index == 0 && widget._currentIndex != 0) {

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Home()));
        }
        if (index == 1 && widget._currentIndex != 1) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Myservices()));
        }
        if (index == 2 && widget._currentIndex != 2) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Myservicestab()));
        }
        if (index == 3 && widget._currentIndex != 3) {

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Mybids()));
        }
        if (index == 4 && widget._currentIndex != 4) {

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Mybids()));
        }
      },
      isFloating: true,
    );
  }
}
