import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

//const kTextFieldDecoration = InputDecoration(
//  hintText: 'undefined',
//  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//  border: OutlineInputBorder(
//    borderRadius: BorderRadius.all(Radius.circular(32.0)),
//  ),
//  enabledBorder: OutlineInputBorder(
//    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
//    borderRadius: BorderRadius.all(Radius.circular(32.0)),
//  ),
//  focusedBorder: OutlineInputBorder(
//    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
//    borderRadius: BorderRadius.all(Radius.circular(32.0)),
//  ),
//);

const kTopOvalContainerDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.elliptical(198, 66),
    bottomRight: Radius.elliptical(198, 66),
  ),
  color: Color(0xff5B9625),
  gradient: LinearGradient(
    colors: [
      Color(0xffA9E230),
      Color(0xff5B9625),
      Color(0xff278C3F),
    ],
    begin: FractionalOffset(0.0, 1.0),
    end: FractionalOffset(1.0, 0.0),
  ),
);

const Color halfOpacityWhite = Color(0x7fffffff);

const kSearchDecoration = InputDecoration(
  hintText: 'Поиск',
  prefixIcon: Icon(
    Icons.search,
    color: Colors.white,
  ),
  hintStyle: TextStyle(color: halfOpacityWhite),
  fillColor: halfOpacityWhite,
  filled: true,
  focusColor: Colors.red,
  hoverColor: Colors.yellow,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kContainerWithBackgroundImageDecoration = BoxDecoration(
  color: Colors.white,
  image: DecorationImage(
    image: AssetImage('images/ТРАНСТЕЛЕКОМ_логотип 2.png'),
    fit: BoxFit.scaleDown,
  ),
);

const kHeaderTextStyle = TextStyle(
  color: Color(0xff2CA449),
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const kGreenContainerWithGradient = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  color: Color(0xff5B9625),
  gradient: LinearGradient(
    colors: [
      Color(0xff5B9625),
      Color(0xff278C3F),
    ],
    begin: FractionalOffset(0.0, 1.0),
    end: FractionalOffset(1.0, 0.0),
  ),
);

const kBottomOvalContainerDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.elliptical(264, 132),
    topRight: Radius.elliptical(264, 132),
  ),
  color: Color(0xff5B9625),
  gradient: LinearGradient(
    colors: [
      Color(0xffA9E230),
      Color(0xff5B9625),
      Color(0xff278C3F),
    ],
    begin: FractionalOffset(0.0, 1.0),
    end: FractionalOffset(1.0, 0.0),
  ),
);
