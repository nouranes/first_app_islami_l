import 'package:first_app_islami/UI/hadeth/hadeth_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Hadeth_ui extends StatefulWidget {
  @override
  State<Hadeth_ui> createState() => _Hadeth_uiState();
}

class _Hadeth_uiState extends State<Hadeth_ui> {
  //List<String> allAhadeth=[];
  List<Hadeth_content> all_Hadeth_content =[];

  @override
  Widget build(BuildContext context) {
   //if(all_Hadeth_content.isEmpty) {
     if (all_Hadeth_content.isEmpty)readFiles();

    return Column(
      children: [
        Image.asset('assets/images/hadeth_item.png'),
        Divider(
          thickness: 2,
          indent: 10,
          endIndent: 10,
          color: Theme.of(context).primaryColor,

        ),
        Text('الاحاديث',style: Theme.of(context).textTheme.titleLarge),
        Divider(
          thickness: 2,
          indent: 10,
          endIndent: 10,
          color: Theme.of(context).primaryColor,

        ),
        Expanded(child:
            all_Hadeth_content.isEmpty? Center(child: CircularProgressIndicator())
        : ListView.separated(
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, Hadeth_Details.routeName,
                  arguments:
                  Hadeth_content(
                      title: all_Hadeth_content[index].title,
                      contant: all_Hadeth_content[index].contant));
            },
            child: Text(all_Hadeth_content[index].title,
                style:Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center, ),
          ),
          separatorBuilder: (context, index) => Divider(
    thickness: 2,
    indent: 80,
    endIndent: 80,
    color: Theme.of(context).primaryColor,
          ),
          itemCount: all_Hadeth_content.length,
     ))

      ],
      ) ;
  }

  readFiles()async{

    String text = await rootBundle.loadString('assets/files/ahadeth.txt');
     List <String> allAhadeth=text.trim().split('#');
    for(int i =0 ;i < allAhadeth.length ;i++){
       String singleHadeth = allAhadeth[i];
       List<String> hadeth_line = singleHadeth.trim().split('\n');
       String title = hadeth_line[0];
       hadeth_line.remove(0);
       String contant = hadeth_line.join('\n');
       Hadeth_content hadeth_content = Hadeth_content(title: title, contant: contant);

         setState(() {
           all_Hadeth_content.add(hadeth_content);

         });

      }
    }
}
  class Hadeth_content {
  String title ;
  String contant ;
  Hadeth_content({required this.title , required this.contant});
  }

