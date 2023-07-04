import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../The_Student/List_pages/Settings.dart';

class DrawerItem {
  String title;
  IconData icon;
  int id;

  get idi =>id;

  DrawerItem( {required this.id,required this.title, required this.icon});


}
class DrawerItems {
  static final my_file =
  DrawerItem(title: "ملفي", icon: Icons.person_outlined, id: 1,);
  static final notifications =
      DrawerItem(title:   "الإشعارات",  icon: Icons.add_alert_rounded, id: 2,);
  static final  situation =
      DrawerItem(title: "تغير الوضع", icon: Icons.mode_night_outlined,id: 3,);
  static final Settings =
  DrawerItem(title: "الاعدادات", icon: Icons.settings,id: 4,);
  static final  language =
  DrawerItem(title: "اللغة", icon: Icons.language,id: 5,);
  static final Exit =
  DrawerItem(title: "خروج", icon: Icons.exit_to_app_rounded,id: 6,
  );
  MyHomeScreen(),
  static final List<DrawerItem> all = [my_file, notifications,situation,Settings,language,Exit];
}
