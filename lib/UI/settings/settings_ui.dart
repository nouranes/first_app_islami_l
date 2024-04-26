import 'dart:ffi';

import 'package:first_app_islami/UI/settings/BottomSheet/Language.dart';
import 'package:first_app_islami/UI/settings/BottomSheet/ThemeMode.dart';
import 'package:first_app_islami/UI/settings/setting_item.dart';
import 'package:flutter/material.dart';
class Settings_ui extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context).size;
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
          title: Text('Settings'),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Setting_item(title: "Language", selected_option: "English",

                  on_tab_option:(){
                showLanguageBottomSheet(context);
                  } ),
              SizedBox(height: 20),
              Setting_item(title: "ThemeMode", selected_option: "Dark",on_tab_option:(){
                showModeBottomSheet(context);
              } )




            ],
          ),
        ),
      ),
    )

      ;
  }
  void showLanguageBottomSheet(context){
    showModalBottomSheet(context: context,
        builder: (context) => Language_BottomSheet());}
  //------------------------------------
  void showModeBottomSheet(context){
    showModalBottomSheet(context: context,
        builder: (context) => ThemeMode_BottomSheet());}


  }


