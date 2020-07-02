import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {@required this.hintText,
      @required this.color,
      @required this.onChanged,
      this.isPassword,
      this.keyboardType,
      this.controller});

  final String hintText;
  final Color color;
  final Function onChanged;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      textAlign: TextAlign.left,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: isPassword ?? false,
      cursorColor: color,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 14),
        contentPadding:
            EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0, left: 1),
        isDense: true,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
//        border: OutlineInputBorder(
//          borderRadius: BorderRadius.all(Radius.circular(32.0)),
//        ),
//        enabledBorder: OutlineInputBorder(
//          borderSide: BorderSide(color: color, width: 1.0),
////          borderRadius: BorderRadius.all(Radius.circular(32.0)),
//        ),
//        focusedBorder: OutlineInputBorder(
//          borderSide: BorderSide(color: color, width: 2.0),
//          borderRadius: BorderRadius.all(Radius.circular(32.0)),
//        ),
      ),
    );
  }
}
