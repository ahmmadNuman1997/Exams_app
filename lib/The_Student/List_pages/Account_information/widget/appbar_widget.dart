import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes.dart';


AppBar buildAppBar(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(),
    title: Text('معلومات الحساب',
      style: GoogleFonts.notoNaskhArabic(
        fontSize: 17,
        color: Colors.white,
        letterSpacing:0,
        fontWeight: FontWeight.w600,
      ),
    ),
    titleSpacing: 00.0,
    centerTitle: true,
    toolbarHeight: 60.2,
    toolbarOpacity: 0.7,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(23),
          bottomLeft: Radius.circular(23)),
    ),
    elevation: 1,
    backgroundColor: Colors.lightBlue,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(
          icon: Icon(icon),
          onPressed: () {
            final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;
            final switcher = ThemeSwitcher.of(context)!;
            switcher.changeTheme(theme: theme);
          },
        ),
      ),
    ],
  );
}