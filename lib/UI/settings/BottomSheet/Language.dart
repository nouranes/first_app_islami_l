import 'package:first_app_islami/UI/settings/BottomSheet/Selected_Widget.dart';
import 'package:first_app_islami/UI/settings/BottomSheet/unselected_widget.dart';
import 'package:flutter/material.dart';

class Language_BottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,


        children: [
          Selected_Option_Widget(selected_title: 'English'),
          
         
          SizedBox(height: 20,),
         //  Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //children: [
             // Text('العربيه',style: Theme.of(context).textTheme.titleLarge,),
              //Icon(Icons.check_circle)

           // ],
          //)
          Un_Selected_Option_Widget(Unselected_title: 'العربيه')
        ],
      ),
    );
  }
}
