import 'package:flutter/material.dart';

class CustomCardForProfile extends StatelessWidget {
  CustomCardForProfile(
      {@required this.text, @required this.image, @required this.onTap});
  final String text;
  final AssetImage image;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      height: 90,
      width: 90,
      child: Column(
        children: <Widget>[
          SizedBox(height: 8),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 44,
              child: Image(
                image: image,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
