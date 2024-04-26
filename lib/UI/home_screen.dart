import 'package:first_app_islami/UI/hadeth/hadeth_ui.dart';
import 'package:first_app_islami/UI/quran/Quran_ui.dart';
import 'package:first_app_islami/UI/radio/Radio_ui.dart';
import 'package:first_app_islami/UI/sebha/Sebha_ui.dart';
import 'package:first_app_islami/UI/settings/settings_ui.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Home_Screen extends StatefulWidget {
  static const String routeName ="Home";


  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selectedIndex =0;
  List<Widget> Screens=[
    Quran_ui(),
    Hadeth_ui(),
    Sebha_ui(),
    RadioUI(),
    Settings_ui(),



  ];
  @override
  Widget build(BuildContext context) {
    var local =AppLocalizations.of(context)!;


    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg3.png"))),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   title: Text(AppLocalizations.of(context)!.islami),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index){
            setState(() {
              selectedIndex=index;
            });

          },
          currentIndex: selectedIndex,
          items: [

            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran .png")),
                label: 'Quran'

            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                label: 'hadenth'),

            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                label: 'hadet'),

            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: 'hade'),

            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'hadeth'),
          ],
        ),


        body: Screens[selectedIndex],


      ),
    );
  }
}
