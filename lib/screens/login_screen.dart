import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/components/custom_text_field.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'profile_screen.dart';
import 'package:flash_chat/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: ModalProgressHUD(
          color: Color(0xff5B9625),
          inAsyncCall: showSpinner,
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            children: <Widget>[
//              Flexible(
//                child: Hero(
//                  tag: 'logo',
//                  child: Container(
//                    height: 200.0,
//                    child: Image.asset('images/logo.png'),
//                  ),
//                ),
//              ),
//              SizedBox(height: 48.0),
//              CustomTextField(
//                hintText: 'Enter your email',
//                controller: emailController,
//                keyboardType: TextInputType.emailAddress,
//                color: Colors.lightBlueAccent,
//                onChanged: (value) {
//                  email = value;
//                },
//              ),
//              SizedBox(height: 8.0),
//              CustomTextField(
//                hintText: 'Enter your password',
//                isPassword: true,
//                controller: passController,
//                color: Colors.lightBlueAccent,
//                onChanged: (value) {
//                  password = value;
//                },
//              ),
//              SizedBox(height: 24.0),
//              RoundedButton(
//                text: 'Log In',
//                onPressed: () async {
//                  setState(() {
//                    showSpinner = true;
//                  });
//                  try {
//                    await _auth.signInWithEmailAndPassword(
//                      email: email,
//                      password: password,
//                    );
//                    final newUser = await _auth.currentUser();
//                    if (newUser != null) {
////                      Navigator.pushNamed(context, ProfileScreen.id);
//                      await Navigator.pushNamed(context, ProfileScreen.id);
//                    }
//                  } catch (e) {
//                    print(e);
//                  } finally {
//                    setState(() {
//                      showSpinner = false;
//                    });
//                  }
//                  emailController.clear();
//                  passController.clear();
//                },
//                color: Colors.lightBlueAccent,
//              ),
//            ],
//          ),
          child: ListView(
            controller: _scrollController,
//            mainAxisAlignment: MainAxisAlignment.end,
            reverse: true,
            children: <Widget>[
              SizedBox(height: 0),
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 500,
                    width: double.infinity,
                    decoration: kBottomOvalContainerDecoration,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Center(
                          child: Text(
                        'Вход в личный кабинет',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: CustomTextField(
                          hintText: 'Логин личного кабинета',
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          color: Colors.white,
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: CustomTextField(
                          hintText: 'Пароль',
                          isPassword: true,
                          controller: passController,
                          keyboardType: TextInputType.emailAddress,
                          color: Colors.white,
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: RoundedButton(
                          text: 'Войти',
                          onPressed: () async {
                            setState(() {
                              showSpinner = true;
                            });
                            try {
                              await _auth.signInWithEmailAndPassword(
                                email: email,
                                password: password,
                              );
                              final newUser = await _auth.currentUser();
                              if (newUser != null) {
//                      Navigator.pushNamed(context, ProfileScreen.id);
                                await Navigator.pushNamed(
                                    context, ProfileScreen.id);
                              }
                            } catch (e) {
                              print(e);
                            } finally {
                              setState(() {
                                showSpinner = false;
                              });
                            }
                            emailController.clear();
                            passController.clear();
                          },
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: InkWell(
                          child: Text(
                            'Восстановление пароля',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onTap: () {
                            print('pressed');
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: InkWell(
                          child: Text(
                            'Online-подключение услуг для физ. лиц ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onTap: () {
                            print('pressed 2');
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 150.0,
                child: Image.asset(
                  'images/ТРАНСТЕЛЕКОМ_логотип 1 (1).png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
