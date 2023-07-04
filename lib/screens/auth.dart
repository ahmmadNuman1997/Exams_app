
import 'package:flutter/material.dart';

import '../choose.dart';
import 'Onboar ding screen/onboarding_screen.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build (BuildContext context){
    return const Scaffold(
    body: OnboardingScreen(),
      // body:StreamBuilder(
      //   builder: ((context, snapshot) {
      //     if(snapshot.hasData){
      //       return  OnboardingScreen();
      //       //return  ToChoose();
      //     }else{
      //       return OnboardingScreen();
      //     }
      //   }),
      // ),
    );
  }
}

