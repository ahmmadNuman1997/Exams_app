import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/screens/screens/components/utilss/helper_functions.dart';
import '../login_screen/change_screen_animation.dart';
import 'login_content.dart';

class TopText extends StatefulWidget {
  const TopText({Key? key}) : super(key: key);

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {
  @override
  void initState() {
    ChangeScreenAnimation.topTextAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  HelperFunctions.wrapWithAnimatedBuilder(
      animation: ChangeScreenAnimation.topTextAnimation,
      child: Text(
        ChangeScreenAnimation.currentScreen == Screens.createAccount
            ? 'Hello\nTeacher'
            : 'Hello\nStudent',
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}