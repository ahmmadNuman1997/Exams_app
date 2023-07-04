import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/theme/theme_manager.dart';

import '../classes/language.dart';
import '../classes/language_constants.dart';
import '../main.dart';

class MyHomeScreen extends StatefulWidget {
   MyHomeScreen({Key? key}) : super(key: key);
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  ThemeManager _themeManager = ThemeManager();
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme App"),
        actions: [Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue) {
          _themeManager.toggleTheme(newValue);
        })],
      ),
      body: Center(
        child: Padding(

          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropdownButton<Language>(
                underline: const SizedBox(),
                icon: const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                onChanged: (Language? language) async {
                  if (language != null) {
                    Locale _locale = await setLocale(language.languageCode);
                    MyApp.setLocale(context, _locale);
                  }
                },
                items: Language.languageList()
                    .map<DropdownMenuItem<Language>>(
                      (e) => DropdownMenuItem<Language>(
                    value: e,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          e.flag,
                          style: const TextStyle(fontSize: 30),
                        ),
                        Text(e.name)
                      ],
                    ),
                  ),
                )
                    .toList(),
              ),
            ],
          ),
        ),
      ),

    );
  }
}