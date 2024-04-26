// ignore_for_file: inference_failure_on_instance_creation


import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:first_app_islami/UI/radio/radiomodel.dart';
import 'package:first_app_islami/UI/radio/radiowidget.dart';

class RadioUI extends StatefulWidget {
   RadioUI({Key? key}) : super(key: key);


  @override
  State<RadioUI> createState() => _HomePageState();
}

class _HomePageState extends State<RadioUI> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Surah Full Page.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Radio'),
        ),

        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Container(
              height: size.height * 0.58,
              margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/radio_logo.jpg'),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Expanded(
              child: FutureBuilder<RadioModel>(
                future: getApiData(),
                builder: (context, AsyncSnapshot<RadioModel> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('There was an error. Please try again later.'));
                  } else if (snapshot.data == null) {
                    return Center(child: Text('No data available.'));
                  }
                  List<Radios?> radioData = snapshot.data!.radios ?? [];


                  return ListView.builder(
                    // reverse: true,
                    physics: PageScrollPhysics(),
                    itemCount: radioData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return RadioWidget(
                          radioData: radioData[index]!,
                        player: player,

                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<RadioModel> getApiData() async {
    var url = Uri.parse('https://mp3quran.net/api/v3/radios?language=ar');
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    RadioModel model = RadioModel.fromJson(json);
    return model;
  }
}
