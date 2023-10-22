import 'package:first_app_islami/UI/quran/items_suer.dart';
import 'package:first_app_islami/UI/quran/quran_details.dart';
import 'package:flutter/material.dart';
class Quran_ui extends StatelessWidget {

  List<String> suerName =[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"

  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        

        Image.asset('assets/images/quran_item.png'),
        Divider(
          thickness: 2,
          color: Theme.of(context).primaryColor,
          indent: 15,
          endIndent: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
                child: Text("رقم السوره ",textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,)
            ),
            Container(
              width: 2,
              height: 45,
              color: Theme.of(context).primaryColor,

            ),

            Expanded(
              flex: 1,
                child: Text("اسم السوره ",textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,)),

          ],
        ),
        Divider(
          thickness: 2,
          color: Theme.of(context).primaryColor,
          indent: 15,
          endIndent: 15,
        ),
        Expanded(child:
        ListView.builder(itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, Quran_Details.routeName,
                arguments:SuraDetails(suraName: suerName[index], suraNumber: '${index+1}') );
          },
          child: items_Quran(
            suraNumber: "${index+1}",
            suraName: suerName[index],


          ),
        ),
          itemCount: suerName.length,


        )
        )

        
      ],



    );

  }
}
class SuraDetails{

  String suraName;
  String suraNumber;
  SuraDetails({required this.suraName ,required this.suraNumber});
}
