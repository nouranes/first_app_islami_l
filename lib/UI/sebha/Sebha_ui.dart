import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Sebha_ui extends StatefulWidget {

  @override
  State<Sebha_ui> createState() => _Sebha_uiState();
}

class _Sebha_uiState extends State<Sebha_ui> {
  int counter = 0;
  List<String> azkar =[
    'سبحان الله',
      'الحمد لله ',
       'الله اكبر',

  ];
  int currentindex=0;

  double angle= 0;

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Surah Full Page.png'),
              fit: BoxFit.fill
          )
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Sebha'),
          backgroundColor: Colors.transparent,

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            Stack(
              alignment: Alignment.topCenter,

              children: [

                Container(
                  margin: EdgeInsets.only(top: size.height*0.09),
                  child: Transform.rotate(
                    angle: angle,
                    child: Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: InkWell(
                        onTap: (){
                          clickInImage();


                        },
                        child: Image.asset('assets/images/body of seb7a.png',
                            height: size.height*0.20),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: size.height*0.065 ),
                  child: Image.asset('assets/images/head of seb7a (2).png',
                      height: size.height*0.10),
                ),

              ],
            ),
            SizedBox(height: 30,),
            Center(child: Text('عدد التسببيحات',style: GoogleFonts.elMessiri(color: Colors.black,
            fontSize: 24 ,fontWeight: FontWeight.bold),)),
            SizedBox(height: 40,),
            Center(
              child: Container(
                //margin: EdgeInsets.all(100),
                width: 80,
                height: 90,
                decoration: BoxDecoration(
                  color: Color(0xFF672CBC),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text('$counter',style: TextStyle(color: Colors.white,
                fontSize: 22 ,fontWeight: FontWeight.bold),)),
              ),

            ),
            SizedBox(height: 30,),
            Center(
              child: Container(

                width: 150,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xFF672CBC),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child: Text(azkar[currentindex],
                  style:GoogleFonts.elMessiri (color: Colors.white,
                    fontSize: 22 ,fontWeight: FontWeight.bold),)),
              ),
            ),

          ],

        ),

      ),
    );
  }
  void clickInImage(){
    angle+=3 ;

    if(counter==30){
      counter =0;
      currentindex++;
      if(currentindex >2){
        currentindex=0;
      }

    }
    counter ++ ;

    setState(() {

    });

  }
}
