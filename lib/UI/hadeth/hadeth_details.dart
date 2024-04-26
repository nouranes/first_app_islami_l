import 'package:first_app_islami/UI/hadeth/hadeth_ui.dart';
import 'package:flutter/material.dart';
class Hadeth_Details extends StatelessWidget {
  static const String routeName ='Hadeth_details';


  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth_content;
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

          title: Text("Islami "),

        ),
        body: Container(
          padding: EdgeInsets.only(top: 20),

          margin: EdgeInsets.all(30),
          width: mediaQuery.width,
          height:mediaQuery.height ,

          decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(20) ,
            color: Color(0xc2f1f1f1), ),
          child: Column(children: [
            Text(args.title,style: Theme.of(context).textTheme.titleLarge,),
            Divider(
              color: Theme.of(context).primaryColor,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child:
                  Text(args.contant,style: Theme.of(context).textTheme.bodySmall,)),
            )
          ]),

          ),





      ),


    );
  }
}
