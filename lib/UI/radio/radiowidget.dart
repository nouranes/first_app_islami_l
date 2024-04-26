import 'package:first_app_islami/UI/radio/radiomodel.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioWidget extends StatefulWidget {
  final Radios radioData;
  final AudioPlayer player;

  RadioWidget({required this.radioData, required this.player});

  @override
  _RadioWidgetState createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  late bool isPlaying;

  @override
  void initState() {
    super.initState();
    isPlaying = false;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              widget.radioData.name!,
              style: GoogleFonts.elMessiri(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
                SizedBox(height: 12,),
        
                IconButton(
                  icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                  iconSize: 50,
                  onPressed: () {
                    if (isPlaying) {
                      widget.player.pause();
                    } else {
                      widget.player.play(UrlSource(widget.radioData.url!));
                    }
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                  },
                ),
        
        ]
        ),
      ),
    );
  }
}
