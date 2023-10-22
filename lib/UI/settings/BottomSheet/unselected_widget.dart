import 'package:flutter/material.dart';

class Un_Selected_Option_Widget extends StatelessWidget {
  String Unselected_title ;
  Un_Selected_Option_Widget({required this.Unselected_title});


  @override
  Widget build(BuildContext context) {

    return


          Container(

            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),

              child: Text(Unselected_title,style: Theme.of(context).textTheme.titleLarge,));



  }
}
