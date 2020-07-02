import 'package:flutter/material.dart';
import 'custom_menu_widget.dart';

class CustomContainerWithRowOfIcons extends StatelessWidget {
  const CustomContainerWithRowOfIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 330,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CustomMenuWidget(
              buttonName: 'Для офиса',
              icon: Icons.contact_mail,
            ),
            CustomMenuWidget(
              buttonName: 'Для бизнеса',
              icon: Icons.business_center,
            ),
            CustomMenuWidget(
              buttonName: 'Для дома',
              icon: Icons.home,
            ),
            CustomMenuWidget(
              buttonName: '''Операторам
связи''',
              icon: Icons.phonelink_ring,
            ),
          ],
        ),
      ),
    );
  }
}
