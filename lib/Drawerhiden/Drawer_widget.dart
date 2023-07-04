import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../The_Student/List_pages/Account_information/Mlain.dart';
import '../The_Student/List_pages/Settings.dart';
import '../The_Student/List_pages/Theme/theme_cubit.dart';
import '../The_Student/List_pages/exit_button.dart';
import '../theme/My_Home_Theme.dart';
import '../theme/theme_manager.dart';
import 'drawer_items.dart';

class DrawerWidget extends StatefulWidget {
  VoidCallback closdDrawer;
  DrawerWidget({required this.closdDrawer});



  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget>
    with SingleTickerProviderStateMixin {
  final double runanim = 0.2;



  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return  Directionality(textDirection: TextDirection.rtl,child:   SingleChildScrollView(
        child: Column(

      children: [
        _buildButton(context),
        SizedBox(
          height: he * 0.05,
        ),
        _buidText(context),
        SizedBox(
          height: he * 0.02,
        ),
        buildDrawerItem(context),
        SizedBox(
          height: he * 0.02,
        ),

      ],
        ),
    ));
  }

  Widget buildDrawerItem(BuildContext context) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: DrawerItems.all
              .map((item) => ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical:4),
                    leading: Icon(
                      item.icon,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    title: Text(
                      item.title,
                      style: GoogleFonts.notoNaskhArabic(
                          fontSize: 15,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    onTap: () {
                      if(item.id==1)
                                                      Navigator.of(context,rootNavigator:true ).push(


                            MaterialPageRoute(
                                builder: (context) => MyAppd()));

                      if(item.id==4){
                                                      Navigator.of(context,rootNavigator:true ).push(


                            MaterialPageRoute(
                                builder: (context) => Setting()));
                      }
                      if(item.id==3){
                                                      Navigator.of(context,rootNavigator:true ).push(


                            MaterialPageRoute(
                                builder: (context) => HomeScreenThime()));
                      }
                      if(item.id==6){
                                                      Navigator.of(context,rootNavigator:true ).push(


                            MaterialPageRoute(
                                builder: (context) => Exit()));

                      }
                      }
                  ))
              .toList(

          ),
        ),
      );
  Widget _buildButton(contex) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return  Directionality(textDirection: TextDirection.rtl,child:  Container(
      margin: EdgeInsets.only(top: he * 0.0, left: we * 0.0),
      width:50,
      height: 50,
      alignment: Alignment.center,
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child:  Directionality(textDirection: TextDirection.rtl,child:  Container(
          width: 47,
          height: 47,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFAB8A0E),
          ),
          child: IconButton(
              onPressed: widget.closdDrawer,
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
                size: 20,
              ))),
    ),
    ),
    );
  }

  Widget _buidText(context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    ThemeManager _themeManager = ThemeManager();


    return    Directionality(textDirection: TextDirection.rtl,child: Container(
      // margin: EdgeInsets.only(right: we * 0.4,),

      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text(
            "Ahmed",
            style: GoogleFonts.lato(
                fontSize: 25,
                letterSpacing: 2,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Noman",
            style: GoogleFonts.lato(
                fontSize: 40,
                letterSpacing: 2,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),


          Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue) {
            _themeManager.toggleTheme(newValue);
          })],


      ),


    ),


    );
  }
}

