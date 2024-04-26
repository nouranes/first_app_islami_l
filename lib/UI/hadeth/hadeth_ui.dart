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

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Surah Full Page.png'),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        backgroundColor:Colors.transparent ,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          title: Text( 'Hadeth',textAlign: TextAlign.start,
              style: TextStyle(color:Color(0xFF672CBC) )
          ),

        ),
         body: Column(
           children: [
             Image.asset('assets/images/hadeth_item.png'),
             Divider(
               thickness: 2,
               indent: 10,
               endIndent: 10,
               color: Colors.black,
             ),
             Text('الاحاديث', style: Theme.of(context).textTheme.titleLarge),
             Divider(
               thickness: 2,
               indent: 10,
               endIndent: 10,
               color: Colors.black,
             ),
             Expanded(
               child: all_Hadeth_content.isEmpty
                   ? Center(child: CircularProgressIndicator())
                   : ListView.separated(
                 itemBuilder: (context, index) => InkWell(
                   onTap: () {
                     Navigator.pushNamed(
                       context,
                       Hadeth_Details.routeName,
                       arguments: Hadeth_content(
                         title: all_Hadeth_content[index].title,
                         contant: all_Hadeth_content[index].contant,
                       ),
                     );
                   },
                   child: Card(
                     color: Colors.white,
                     margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                     elevation: 1,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(15),
                       child: Text(
                         all_Hadeth_content[index].title,
                         style: Theme.of(context).textTheme.bodySmall,
                         textAlign: TextAlign.center,
                       ),
                     ),
                   ),
                 ),
                 separatorBuilder: (context, index) => SizedBox(height: 10),
                 itemCount: all_Hadeth_content.length,
               ),
             ),
           ],
         ),

      ),
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

