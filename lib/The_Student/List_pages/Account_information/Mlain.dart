import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localization_v2/The_Student/List_pages/Account_information/page/profile_page.dart';
import 'package:flutter_localization_v2/The_Student/List_pages/Account_information/themes.dart';
import 'package:flutter_localization_v2/The_Student/List_pages/Account_information/utils/user_preferences.dart';


Future mainl() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyAppd());
}

class MyAppd extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          home: ProfilePage(),
        ),
      ),
    );
  }
}