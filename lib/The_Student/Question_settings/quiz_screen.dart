import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/The_Student/Question_settings/question_controller.dart';
import 'package:get/get.dart';
import 'body.dart';


class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
      ),
      backgroundColor: Colors.white70,
      body:Body(
      ),
    );
  }
}