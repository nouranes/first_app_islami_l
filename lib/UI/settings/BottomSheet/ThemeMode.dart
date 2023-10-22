import 'package:flutter/material.dart';

class ThemeMode_BottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Theme.of(context).primaryColor.withOpacity(0.8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,


        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dark',style: Theme.of(context).textTheme.titleLarge,),
              Icon(Icons.check_circle)

            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Light',style: Theme.of(context).textTheme.titleLarge,),
              Icon(Icons.check_circle)

            ],
          )
        ],
      ),
    );
  }
}
