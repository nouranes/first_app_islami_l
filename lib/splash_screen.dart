import 'dart:async';

import 'package:first_app_islami/UI/home_screen.dart';
import 'package:flutter/material.dart';
class Splash_Screen extends StatelessWidget {
  static const String routeName ='splash';

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Home_Screen.routeName);


    });
    var mediaQuary = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset('assets/images/splash_background.png',
        width: mediaQuary.width,
        height: mediaQuary.height,
        fit: BoxFit.cover,
      ),

    );
  }
}
