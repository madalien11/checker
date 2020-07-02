import 'dart:ui';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/custom_card_for_profile.dart';
import 'services_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  final _auth = FirebaseAuth.instance;
  int _currentIndex = 2;
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

  static final _screens = [ServicesScreen.id];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF278C3F),
        type: BottomNavigationBarType.fixed,
        items: _items,
        currentIndex: 2,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex < 2) {
              _currentIndex == 1
                  ? Navigator.pushNamed(context, _screens[_currentIndex - 1])
                  : Navigator.pop(context);
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
                  width: double.infinity,
                  height: 200,
                  decoration: kTopOvalContainerDecoration,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 30),
                      Text(
                        'Личный кабинет',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(height: 50),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        height: 220,
                        width: 220,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 22),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Color(0xffE5E5E5),
                              backgroundImage: AssetImage('images/Ellipse.png'),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Kendrick',
                              style: TextStyle(
                                  color: Color(0xff278C3F), fontSize: 24),
                            ),
                            Text(
                              'Lamar',
                              style: TextStyle(
                                  color: Color(0xff278C3F), fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CustomCardForProfile(
                      text: 'Подписать договор',
                      image: AssetImage('images/Vector.png'),
                      onTap: () {
                        print('profile button was pressed');
                      },
                    ),
                    CustomCardForProfile(
                      text: 'Посмотреть договор',
                      image: AssetImage('images/Vector (1).png'),
                      onTap: () {
                        print('profile button was pressed');
                      },
                    ),
                    CustomCardForProfile(
                      text: 'Настройки',
                      image: AssetImage('images/Vector (2).png'),
                      onTap: () {
                        print('profile button was pressed');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CustomCardForProfile(
                      text: 'Мой баланс',
                      image: AssetImage('images/Vector (3).png'),
                      onTap: () {
                        print('profile button was pressed');
                      },
                    ),
                    CustomCardForProfile(
                      text: 'Поддержка',
                      image: AssetImage('images/Vector (4).png'),
                      onTap: () {
                        print('profile button was pressed');
                      },
                    ),
                    CustomCardForProfile(
                      text: 'Выйти',
                      image: AssetImage('images/Vector (5).png'),
                      onTap: () {
                        _auth.signOut();
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 18),
              ],
            )
          ],
        ),
      ),
    );
  }
}
