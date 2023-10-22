import 'package:flutter/material.dart';

class items_Quran extends StatelessWidget {
  String suraName ;
  String suraNumber ;
  items_Quran({required this.suraName,required this.suraNumber});



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
            flex: 1,
            child: Text(suraNumber,textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,)
        ),
        Container(
          width: 2,
          height: 45,
          color: Theme.of(context).primaryColor,

        ),

        Expanded(
            flex: 1,
            child: Text(suraName,textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,)),

      ],
    ) ;
  }
}
