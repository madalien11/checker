import 'package:flutter/material.dart';

class CustomIconWithBottomText extends StatelessWidget {
  CustomIconWithBottomText({@required this.text, @required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 34,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 8),
          ),
        ],
      ),
    );
  }
}
