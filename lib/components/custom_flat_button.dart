import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  CustomFlatButton({@required this.text, this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    var containsIcon = false;
    if (icon != null) {
      containsIcon = true;
    }
    return FlatButton(
      onPressed: null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Color(0xff5B9625)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(color: Color(0xff5B9625), fontSize: 16),
          ),
          containsIcon ? SizedBox(width: 5) : SizedBox(width: 0),
          containsIcon
              ? Icon(icon, color: Color(0xff5B9625))
              : SizedBox(width: 0),
        ],
      ),
    );
  }
}
