import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  static const String id = 'services_screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FloatingActionButton.extended(
          label: Text('SERVICES'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
