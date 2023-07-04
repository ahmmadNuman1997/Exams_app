import 'package:flutter/material.dart';

import 'Examsettings.dart';
import 'Question.dart';
import 'errorText.dart';


void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(

        textDirection: TextDirection.rtl, child: DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 13,
          backgroundColor: Colors.blueAccent,
          elevation: 1,
          // backgroundColor:  Color(0xFF212121),
          bottom:  TabBar (
            tabs: <Widget>[
              const Tab(
                child: Text('إعدادات الاختبار',
                  style:  TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(Icons.article_outlined,
                 color: Colors.white,

                ),
              ),
              const Tab(
                child: Text('أسئلة الاختبار',
                  style:  TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(Icons.app_registration_rounded,
                  color: Colors.white,
                ),
              ),
              const Tab(
                child: Text('معاينة الاختبار',
                  style:  TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(Icons.auto_stories_outlined,
                color: Colors.white,
                ),
              ),
            ],
          ),

        ),

        body:  TabBarView(
          children: <Widget>[
             const ExamSettings(),
            QuestionSelection()


          ],
        ),

      ),

    ),
    );
  }
}
