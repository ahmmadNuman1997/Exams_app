import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'components/login_screen.dart';

void main() {
  runApp(const MyApplogin());
}

class MyApplogin extends StatelessWidget {
  const MyApplogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kPrimaryColor,
          fontFamily: 'Montserrat',
        ),
      ),
      home: const LoginScreen(),
    );
  }
}