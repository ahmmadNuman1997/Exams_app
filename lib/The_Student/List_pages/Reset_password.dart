import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reset_password extends StatefulWidget {
  const Reset_password({Key? key}) : super(key: key);

  @override
  State<Reset_password> createState() => _Reset_passwordState();
}

class _Reset_passwordState extends State<Reset_password> {
  @override
  Widget build(BuildContext context) {
    return  Directionality(textDirection: TextDirection.rtl,child:    Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title:  Text('الإعدادات',
        style: GoogleFonts.notoNaskhArabic(
          fontSize: 19,
          color: Colors.white,
          letterSpacing:0,
          fontWeight: FontWeight.w600,
        ),
      ),
        brightness: Brightness.dark,
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 10,
      ),
      body: SafeArea(
        child: Center(
            child: Column(

              children: [
                SizedBox(height: 20,),
                Text(
                  'اعادة تعين كلمة المرور',
                  style: GoogleFonts.robotoCondensed(fontSize: 15,
                  color: Colors.indigo,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black54,
                          ),
                          hintText: 'كلمة المرور الجديدة',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.cyan,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                SizedBox(height: 15),
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black54,
                          ),
                          hintText: 'اعادة كلمة المرور الجديدة ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.cyan,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    // onTap: signIn,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'تغير كلمة المرور',
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
