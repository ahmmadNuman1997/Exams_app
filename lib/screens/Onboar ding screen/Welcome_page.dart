import 'package:flutter/material.dart';
import '../../main.dart';
import '../login_screen.dart';
import 'onboarding_screen.dart';


void main () => runApp( MyApp());
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  LoginPage(),
    );
  }
}

