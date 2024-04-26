import 'package:first_app_islami/UI/quran/items_suer.dart';
import 'package:first_app_islami/UI/quran/quran_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Quran_ui extends StatelessWidget {

  List<String> suerName = [
    "ٱلْفَاتِحَة",
    "ٱلْبَقَرَة",
    "آل عِمْرَان",
    "ٱلنِّسَاء",
    "ٱلْمَائِدَة",
    "ٱلْأَنْعَام",
    "ٱلْأَعْرَاف",
    "ٱلْأَنْفَال",
    "ٱلتَّوْبَة",
    "يُونُس",
    "هُود",
    "يُوسُف",
    "ٱلرَّعْد",
    "إِبْرَٰهِيم",
    "ٱلْحِجْر",
    "ٱلنَّحْل",
    "ٱلْإِسْرَاء",
    "ٱلْكَهْف",
    "مَرْيَم",
    "طه",
    "ٱلْأَنْبِيَاء",
    "ٱلْحَجّ",
    "ٱلْمُؤْمِنُون",
    "ٱلنُّور",
    "ٱلْفُرْقَان",
    "ٱلشُّعَرَاء",
    "ٱلنَّمْل",
    "ٱلْقَصَص",
    "ٱلْعَنْكَبُوت",
    "ٱلرُّوم",
    "لُقْمَان",
    "ٱلسَّجْدَة",
    "ٱلْأَحْزَاب",
    "سَبَأ",
    "فَاطِر",
    "يس",
    "ٱلصَّافَّات",
    "ص",
    "ٱلزُّمَر",
    "ٱلْغَافِر",
    "فُصِّلَت",
    "ٱلشُّورَى",
    "ٱلزُّخْرُف",
    "ٱلدُّخَان",
    "ٱلْجَاثِيَة",
    "ٱلْأَحْقَاف",
    "مُحَمَّد",
    "ٱلْفَتْح",
    "ٱلْحُجُرَات",
    "ق",
    "ٱلذَّارِيَات",
    "ٱلطُّور",
    "ٱلنَّجْم",
    "ٱلْقَمَر",
    "ٱلرَّحْمَٰن",
    "ٱلْوَاقِعَة",
    "ٱلْحَدِيد",
    "ٱلْمُجَادَلَة",
    "ٱلْحَشْر",
    "ٱلْمُمْتَحَنَة",
    "ٱلصَّفّ",
    "ٱلْجُمُعَة",
    "ٱلْمُنَافِقُون",
    "ٱلتَّغَابُن",
    "ٱلطَّلَاق",
    "ٱلتَّحْرِيم",
    "ٱلْمُلْك",
    "ٱلْقَلَم",
    "ٱلْحَاقَّة",
    "ٱلْمَعَارِج",
    "نُوح",
    "ٱلْجِنّ",
    "ٱلْمُزَّمِّل",
    "ٱلْمُدَّثِّر",
    "ٱلْقِيَامَة",
    "ٱلْإِنْسَان",
    "ٱلْمُرْسَلَات",
    "ٱلنَّبَأ",
    "ٱلنَّازِعَات",
    "عَبَسَ",
    "ٱلتَّكْوِير",
    "ٱلْإِنْفِطَار",
    "ٱلْمُطَفِّفِين",
    "ٱلْإِنْشِقَاق",
    "ٱلْبُرُوج",
    "ٱلطَّارِق",
    "ٱلْأَعْلَى",
    "ٱلْغَاشِيَة",
    "ٱلْفَجْر",
    "ٱلْبَلَد",
    "ٱلشَّمْس",
    "ٱلْلَّيْل",
    "ٱلضُّحَىٰ",
    "ٱلشَّرْح",
    "ٱلتِّين",
    "ٱلْعَلَق",
    "ٱلْقَدْر",
    "ٱلْبَيِّنَة",
    "ٱلزِّلْزَال",
    "ٱلْعَادِيَات",
    "ٱلْقَارِعَة",
    "ٱلتَّكَاثُر",
    "ٱلْعَصْر",
    "ٱلْهُمَزَة",
    "ٱلْفِيل",
    "قُرَيْش",
    "ٱلْمَاعُون",
    "ٱلْكَوْثَر",
    "ٱلْكَافِرُون",
    "ٱلنَّصْر",
    "ٱلْمَسَد",
    "ٱلْإِخْلَاص",
    "ٱلْفَلَق",
    "ٱلنَّاس"
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Surah Full Page.png'),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:AppBar(

          title:
              // Padding(
              //   padding: EdgeInsets.only(left: 20, right: 10),
              //   child: Image.asset('assets/images/menu-2-line 1.png'),
              // ),

              Text (
                'Quran ',
                // style: GoogleFonts.elMessiri(
                //   fontSize: 25,
                //   // fontWeight: FontWeight.bold,
                //   color: Color(0xFF672CBC),
              //   ),
              // ),
              ),

          // actions: [
          //   Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 35.0),
          //       child: Image.asset('assets/images/search-line 1.png', width: 24, height: 24)
          //   ),
          // ],
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),





        body: Column(

          children:[
            SizedBox(height: 25,),

            SizedBox(

            width: 250,
            child: Image.asset(
              'assets/images/Quran.png',
              // fit: BoxFit.cover,
            ),),
            Expanded(
              child: ListView.builder(
              itemCount: suerName.length,
              itemBuilder: (context, index)
              {
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Quran_Details.routeName,
                      arguments: SuraDetails(
                        suraName: suerName[index],
                        suraNumber: '${index + 1}',
                      ),
                    );

                  },
                  title: Container(
                    color: Color(0xFFFFFFFF),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    margin: EdgeInsets.fromLTRB(20, 4, 20, 4),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/Group 18.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Center(
                                child: Text(
                                  '${index + 1}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 12),
                        Text(
                          suerName[index],
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );

              },
                        ),
            ),
        ]
        ),

      ),
    );

  }
}
class SuraDetails{

  String suraName;
  String suraNumber;
  SuraDetails({required this.suraName ,required this.suraNumber});
}
