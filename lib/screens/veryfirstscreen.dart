import 'dart:ui';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/custom_container_with_row_of_icons.dart';
import 'package:flash_chat/components/custom_icon_with_bottom_text.dart';
import 'package:flash_chat/components/custom_flat_button.dart';
import 'services_screen.dart';
import 'profile_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flash_chat/office_markers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'login_screen.dart';

class VeryFirstScreen extends StatefulWidget {
  static const String id = 'very_first_screen';
  @override
  _VeryFirstScreenState createState() => _VeryFirstScreenState();
}

class _VeryFirstScreenState extends State<VeryFirstScreen> {
  final Map<String, Marker> markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      onMapCreated(markers);
    });
  }

  String searchInputValue = '';
  int _currentIndex = 0;
  final _items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('Main'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.streetview),
      title: Text('Services'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text('Profile'),
    ),
  ];

  static final _screens = [ServicesScreen.id, LoginScreen.id];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF278C3F),
        type: BottomNavigationBarType.fixed,
        items: _items,
        currentIndex: 0,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex > 0) {
              Navigator.pushNamed(context, _screens[_currentIndex - 1]);
            }
          });
        },
      ),
      body: Material(
        color: Color(0xffE5E5E5),
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: kTopOvalContainerDecoration,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Text(
                      'Transtelecom',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 330,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            searchInputValue = value;
                          });
                        },
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: kSearchDecoration,
                      ),
                    ),
                    SizedBox(height: 14),
                    CustomContainerWithRowOfIcons(),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: kContainerWithBackgroundImageDecoration,
              height: 212,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'О компании',
                      textAlign: TextAlign.center,
                      style: kHeaderTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10.0, left: 30.0, right: 30.0),
                    child: Text(
                      'АО «Транстелеком» – один из крупнейших операторов связи Республики Казахстан, специализирующийся на телекоммуникациях, цифровизации и системной интеграции в области ИТ, связи, автоматики и энергетики.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 54),
                    child: CustomFlatButton(
                      text: 'Подробнее о компании',
                      icon: Icons.arrow_forward,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              color: Colors.white,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Наша миссия',
                      textAlign: TextAlign.center,
                      style: kHeaderTextStyle,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: 10.0, left: 20.0, right: 20.0),
                    child: Text(
                      'Привести казахстанцев к цифровому благосостояню, опираясь на наши уникальные способности:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff2CA449),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 190,
                decoration: kGreenContainerWithGradient,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CustomIconWithBottomText(
                          text: '''Центр информационной
безопасности SOC''',
                          icon: Icons.business,
                        ),
                        CustomIconWithBottomText(
                          text: '''Центр информационной
безопасности SOC''',
                          icon: Icons.business,
                        ),
                        CustomIconWithBottomText(
                          text: '''Центр информационной
безопасности SOC''',
                          icon: Icons.business,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CustomIconWithBottomText(
                          text: '''Центр информационной
безопасности SOC''',
                          icon: Icons.business,
                        ),
                        CustomIconWithBottomText(
                          text: '''Центр информационной
безопасности SOC''',
                          icon: Icons.business,
                        ),
                        CustomIconWithBottomText(
                          text: '''Центр информационной
безопасности SOC''',
                          icon: Icons.business,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Наши отделения',
              textAlign: TextAlign.center,
              style: kHeaderTextStyle,
            ),
            SizedBox(height: 20),
            Container(
              height: 300,
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  image: AssetImage("images/Mapsicle Map.png"),
//                  fit: BoxFit.fill,
//                ),
//              ),
              child: GoogleMap(
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                  Factory<OneSequenceGestureRecognizer>(
                    () => EagerGestureRecognizer(),
                  ),
                },
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: const LatLng(48.563896, 66.984265),
                  zoom: 4,
                ),
                markers: markers.values.toSet(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
