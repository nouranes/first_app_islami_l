import 'package:flutter/material.dart';

class Selected_Option_Widget extends StatelessWidget {
  String selected_title ;
  Selected_Option_Widget({required this.selected_title});


  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return  Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),

      height: 65,
      width: mediaQuery.width,
      decoration: BoxDecoration(
          color: Colors.black12,
        border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(8)
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(selected_title,style: Theme.of(context).textTheme.titleLarge,),
          Icon(Icons.check_circle)

        ],
      ),
    );
  }
}
