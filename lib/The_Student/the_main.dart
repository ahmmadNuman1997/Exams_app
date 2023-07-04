import 'package:flutter/material.dart';

import '../main_pages/home_screen.dart';
import 'Enter_test.dart';

class HomeStudent extends StatefulWidget {
  const HomeStudent({super.key});

  @override
  State<HomeStudent> createState() => _HomeStudentState();
}
class _HomeStudentState extends State<HomeStudent> {
  @override
  List dataList = [
    {'text': 'Exams', "image": "assets/exam.png"},
    {'text': 'Results', "image": "assets/exam.png"},
    {'text': 'Settings', "image": "assets/settings.png"},
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Exaaaaaaaaaaaaams'),
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            elevation: 10,
          ),
          backgroundColor: Colors.white70,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20.0),

            child: GridView.count(
              crossAxisCount: 2,
              semanticChildCount: 10,
              childAspectRatio: 0.7,
              shrinkWrap: true,
              children: List.generate(
                  dataList.length,
                      (index) => InkWell(
                      onTap: () {
                        if (index == 0) {
                          print("add Exam");
                                                        Navigator.of(context,rootNavigator:true ).push(


                              MaterialPageRoute(
                                  builder: (context) => Enterthetest()));
                        } else if (index == 1) {
                          print(" Exam");
                        }
                      },
                      splashColor: Colors.cyan,
                      child: Container(
                        padding: const EdgeInsets.all(6.0),

                        width: MediaQuery.of(context).size.width / 2,
                        // height: MediaQuery.of(context).size.width/1.5,
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: MediaQuery.of(context).size.width / 2,
                                  child: Image.asset(
                                    dataList[index]["image"],
                                    width:
                                    MediaQuery.of(context).size.width / 2,
                                    height:
                                    MediaQuery.of(context).size.width / 2,
                                    fit: BoxFit.contain,
                                  )),
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                alignment: Alignment.center,
                                child: Text(
                                  dataList[index]["text"],
                                  maxLines: 1,
                                  style: TextStyle(fontSize: 17),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))),
            ),
          ),
        ),
      ),
    );
  }
}
