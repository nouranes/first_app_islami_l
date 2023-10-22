import 'package:first_app_islami/UI/quran/Quran_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Quran_Details extends StatefulWidget {
  static const String routeName = 'Quran_datails';

  @override
  State<Quran_Details> createState() => _Quran_DetailsState();
}

class _Quran_DetailsState extends State<Quran_Details> {
  String content = '';
  List<String >allVerses=[];

  @override
  Widget build(BuildContext context) {
    

    var args =ModalRoute.of(context)?.settings.arguments as SuraDetails;

    if(content.isEmpty) ReadFiles(args.suraNumber);

    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(image:
      DecorationImage(image: AssetImage('assets/images/bg3.png'))),

        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(

            title: Text("Islami "),

          ),
          body: Container(
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.all(30),
            width: mediaQuery.width,
              height: mediaQuery.height,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffF8F8F8),
              ),



              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(args.suraName,style: Theme.of(context).textTheme.titleLarge,),
                      SizedBox(width:10),
                      Icon(Icons.play_circle,),
                    ],

                  ),
                  Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 1.8,
                    indent: 50,
                    endIndent: 50,
                  ),
                  //Expanded(child: ListView.builder(itemBuilder:
                     // (context, index) =>
              Expanded(
                child: ListView.builder(itemBuilder:(context, index) =>
                    Text('(${(index+1)})${allVerses[index]} ',textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,),
                 itemCount: allVerses.length,
                ),
              ),

                  
                ],
              )),
        ));
  }

  ReadFiles (String index)async{

    String text = await rootBundle.loadString('assets/files/$index.txt');
    content=text;


     setState(() {
       allVerses=content.trim().split('\n');
     });



  }
}
