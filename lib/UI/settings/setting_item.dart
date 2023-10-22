import 'package:flutter/material.dart';

typedef Settings_option_clicked = void Function();


class Setting_item extends StatelessWidget {
  Settings_option_clicked on_tab_option;
  String title ;
  String selected_option ;
  Setting_item({required this.title,required this.selected_option,required this.on_tab_option});




  @override
  Widget build(BuildContext context){
    var theme= Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign:TextAlign.start, ),
          InkWell(
            onTap:  on_tab_option,
            child: Container(
              padding: EdgeInsets.all(10),


              height: 55,
              width: mediaQuery.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Theme.of(context).primaryColor),


              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(selected_option,style: Theme.of(context).textTheme.bodySmall ,),
                  Icon(Icons.arrow_drop_down),

                ],
              ),
            ),
          )

        ],
    );
  }

}
