import 'package:flutter/material.dart';

class InputFieldArea extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;
  TextEditingController controllerval;
  InputFieldArea(
      {required this.hint,
        required this.obscure,
        required this.icon,
        required this.controllerval});
  @override
  Widget build(BuildContext context) {
    return (new Container(
      decoration: new BoxDecoration(
        border: new Border(
          bottom: new BorderSide(
            width: 0.5,
            color: Color(0xff080F18),
          ),
        ),
      ),
      child: new TextFormField(
        obscureText: obscure,
        style: const TextStyle(
          color: Colors.black,
        ),
        controller: controllerval,
        decoration: new InputDecoration(
          suffixIcon: new Icon(
            icon,
            color: Color(0xffC19741),
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.black, fontSize: 16.0),
          contentPadding: const EdgeInsets.only(
              top: 20.0, right: 30.0, bottom: 20.0, left: 20.0),
        ),
      ),
    ));
  }
}
