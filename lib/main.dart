import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/classes/language_constants.dart';
import 'package:flutter_localization_v2/router/custom_router.dart';
import 'package:flutter_localization_v2/screens/auth.dart';
import 'package:flutter_localization_v2/theme/theme_constants.dart';
import 'package:flutter_localization_v2/theme/theme_manager.dart';
import 'classes/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



void main() {
  runApp(  MyApp());
}

ThemeManager _themeManager = ThemeManager();

class  MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }

}

class _MyAppState extends State<MyApp> {

  Locale? _locale;


  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => {setLocale(locale)});
    super.didChangeDependencies();
  }

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
    return MaterialApp(
      title: 'Localization',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: CustomRouter.generatedRoute,
      // initialRoute: homeRoute,
      locale: _locale,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: const Auth(),
    );
  }
}

