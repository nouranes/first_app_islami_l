import 'dart:async';

import 'package:first_app_islami/UI/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Splash_Screen extends StatelessWidget {
  static const String routeName ='splash';

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Home_Screen.routeName);


    });
    var mediaQuary = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(

        image: DecorationImage(image: AssetImage('assets/images/splash_background.png')),

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,



      ),
    );
  }
}
