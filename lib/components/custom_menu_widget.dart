import 'package:flutter/material.dart';

class CustomMenuWidget extends StatelessWidget {
  CustomMenuWidget({@required this.buttonName, @required this.icon});

  final String buttonName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff278C3F).withOpacity(0.2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
      ),
      width: 71,
      height: 67,
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xff2CA449),
                shape: BoxShape.circle,
              ),
              width: 40,
              height: 40,
              child: IconButton(
                icon: Icon(
                  icon,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              buttonName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
