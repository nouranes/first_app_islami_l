import 'package:first_app_islami/UI/hadeth/hadeth_details.dart';
import 'package:first_app_islami/UI/home_screen.dart';
import 'package:first_app_islami/UI/quran/quran_details.dart';
import 'package:first_app_islami/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



void main ()async{


  runApp(My_app());
}
class My_app extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('en'),

      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.black, size: 35
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
              bodySmall: GoogleFonts.elMessiri(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.black)
        ),
        primaryColor: Color(0xFF672CBC),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,

          backgroundColor: Colors.white,
          elevation: 0,
          selectedIconTheme: IconThemeData(color: Color(0xFF672CBC),size: 40),
            selectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(color: Color(0xFF8789A3),size: 35),
          unselectedItemColor: Colors.white,

        ),

        appBarTheme: AppBarTheme(


          iconTheme: IconThemeData(

            color: Color(0xFF672CBC),
            size: 40 ,
          ) ,

          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          )
        )
      )

      ,

      initialRoute: Splash_Screen.routeName,
      routes: {

        Splash_Screen.routeName : (context)=> Splash_Screen(),
        Home_Screen.routeName : (context)=> Home_Screen(),
        Quran_Details.routeName :(context)=> Quran_Details(),
        Hadeth_Details.routeName:(context) => Hadeth_Details(),

      },
    );
  }
}