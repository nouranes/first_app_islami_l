import 'dart:async';

import 'package:flutter/material.dart';

import 'UI/home_screen.dart';


class Splash_Screen extends StatelessWidget {
  static const String routeName = 'splash';


  @override
  Widget build(BuildContext context) {


    //var mediaQuary = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Quran App',
                style: TextStyle(
                  color: Color(0xFF9747FF),
                  fontSize: 28,
                ),
              ),
              SizedBox(height: 12,),
              Text(
                'Learn Quran and \n Recite once everyday',
                style: TextStyle(
                  color: Color(0xFF8789A3),
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40,),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF672CBC),
                    ),
                    child: Image(image: AssetImage('assets/images/Group 35.png')),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: -25,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, Home_Screen.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFF9B091),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
