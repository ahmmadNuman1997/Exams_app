import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Reset_password.dart';



class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const LisTileExample(),
    );
  }
}

class LisTileExample extends StatelessWidget {
  const LisTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return   Directionality(textDirection: TextDirection.rtl,child: Scaffold(
      appBar: AppBar(
        title:  Text('الإعدادات',
        style: GoogleFonts.notoNaskhArabic(
          fontSize: 19,
          color:  Colors.white,
          letterSpacing:0,
          fontWeight: FontWeight.w600,
        ),
      ),
        brightness: Brightness.dark,
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 10,
      ),
      body: Container(
        color:  Colors.black26,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [

            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular((26),
                ),
              ),

              child: ListTile(
                title: Text('معلومات الحساب',
                style: GoogleFonts.notoNaskhArabic(
                    fontSize: 16,
                    letterSpacing:0,
                  color: Colors.black,
                    ),
                ),
                // leading: Icon(Icons.confirmation_num_sharp),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('تغير كلمة المرور',
                  style: GoogleFonts.notoNaskhArabic(
                    fontSize: 15,
                    letterSpacing:0,
                  ),
                ),
                subtitle: Text('تغير بيانات الحساب',
                  style: GoogleFonts.notoNaskhArabic(
                      fontSize: 13,
                      letterSpacing: 0,
                      color: Colors.black26,
                      fontWeight: FontWeight.w200),
                ),
                trailing: Icon(Icons.arrow_back_ios_new),
                // leading: Icon(Icons.confirmation_num_sharp),
                onTap: () {
                                                Navigator.of(context,rootNavigator:true ).push(


                      MaterialPageRoute(
                          builder: (context) =>  Reset_password()));

                },
                iconColor: Colors.black87,
                tileColor: Colors.white12,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),


              ),
            ),
            SizedBox(height: 7,),
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text('تغير البريد الإلكتروني',
                  style: GoogleFonts.notoNaskhArabic(
                    fontSize: 15,
                    letterSpacing:0,
                  ),
                ),
                subtitle: Text('تغير بيانات الحساب',
                  style: GoogleFonts.notoNaskhArabic(
                      fontSize: 13,
                      letterSpacing: 0,
                      color: Colors.black26,
                      fontWeight: FontWeight.w200),
                ),
                trailing: Icon(Icons.arrow_back_ios_new),
                // leading: Icon(Icons.confirmation_num_sharp),
                onTap: () {},
                iconColor: Colors.black87,
                tileColor: Colors.white12,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),


              ),
            ),
          ],
        ),
      ),

    ),
    );
  }
}
