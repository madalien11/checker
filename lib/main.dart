import 'package:flash_chat/screens/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'screens/veryfirstscreen.dart';
import 'screens/services_screen.dart';
import 'screens/profile_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: ThemeData.dark().copyWith(
//        textTheme: TextTheme(
//          body1: TextStyle(color: Colors.black54),
//        ),
//      ),
      initialRoute: VeryFirstScreen.id,
      routes: {
        VeryFirstScreen.id: (context) => VeryFirstScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        ServicesScreen.id: (context) => ServicesScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
