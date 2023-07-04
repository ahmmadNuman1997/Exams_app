import 'package:flutter/material.dart';

class choices extends StatefulWidget {
  const choices({Key? key}) : super(key: key);

  @override
  State<choices> createState() => _createState();
}

class _createState extends State<choices> {
  String? Choose;
  String? Choose1;
  String? Choose2;
  String? Choose3;
  String? Choose4;
  String? checkandclear;


  @override
  Widget build(BuildContext context) {
    return Container(


      padding: EdgeInsets.only(top: 10,left: 6),
      child: Column(

        children: [

          Row(
            children: [
              Expanded(
                child:  Row(
                  children: [
                    Radio(
                        value: "Choose1",
                        groupValue: Choose,
                        onChanged: (val) {
                          setState(() {
                            Choose = val;
                          });
                        }),
                    Expanded(
                      child:   TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          hintText: 'الاجابة 1',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: const  BorderSide(
                              color: Colors.amberAccent,
                              width: 1,
                                style: BorderStyle.solid,
                                strokeAlign: StrokeAlign.center),
                          ),
                        ),
                        style: const  TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                        value: "Choose2",
                        groupValue: Choose,
                        onChanged: (val) {
                          setState(() {
                            Choose = val;
                          });
                        }),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          hintText: 'الاجابة 2',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: const  BorderSide(
                                color: Colors.amberAccent,
                                width: 1,
                                style: BorderStyle.solid,
                                strokeAlign: StrokeAlign.center),
                          ),
                        ),
                        style: const  TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                flex: 1,
              ),
            ],
          ),
         const SizedBox(height: 12),
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Radio(
                        value: "Choose3",
                        groupValue: Choose,
                        onChanged: (val) {
                          setState(() {
                            Choose = val;
                          });
                        }),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          hintText: 'الاجابة 3',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: const  BorderSide(
                                color: Colors.amberAccent,
                                width: 1,
                                style: BorderStyle.solid,
                                strokeAlign: StrokeAlign.center),
                          ),
                        ),
                        style: const  TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                        value: "Choose4",
                        groupValue: Choose,
                        onChanged: (val) {
                          setState(() {
                            Choose = val;
                          });
                        }),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          hintText: 'الاجابة 4',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: const  BorderSide(
                                color: Colors.amberAccent,
                                width: 1,
                                style: BorderStyle.solid,
                                strokeAlign: StrokeAlign.center),
                          ),
                        ),
                        style: const  TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
