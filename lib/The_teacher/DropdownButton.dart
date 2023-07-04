import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Types_of_questions/TextFieldWidget.dart';
import 'Types_of_questions/Correct_and_cover.dart';
import 'Types_of_questions/Multiple_choice.dart';
import 'Types_of_questions/choices.dart';

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  int? selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
            children: [
           Row(
             children: [
               Container(

                 padding: EdgeInsets.all(16),
                 width: MediaQuery.of(context).size.width-(MediaQuery.of(context).size.width/3)-0,
                 alignment: Alignment.centerRight,
                 child: DropdownButtonFormField<int>(
                   decoration: InputDecoration(
                     label:  const Text(
                         'اختر نوع السؤال',
                         style: TextStyle(
                           fontSize: 13,
                           fontWeight: FontWeight.w700,
                           color:  Colors.black,
                         ),

                     ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.black38, width: 2),
                       borderRadius: BorderRadius.circular(10),
                     ),
                     border:   OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue, width: 2),
                       borderRadius: BorderRadius.circular(10),
                     ),
                     filled: true,
                     fillColor: Colors.white,
                   ),
                   dropdownColor: Colors.white,
                   value: selectedItem,
                   isExpanded: true,
                   iconSize: 28,
                   icon:  const Icon(Icons.arrow_drop_down, color: Colors.black),
                   style: const TextStyle(
                     fontSize: 13,
                     fontWeight: FontWeight.w700,
                     color:  Colors.black,

                   ),
                   items: const [
                     DropdownMenuItem<int>(
                       value: 1,
                       child: Text('اختر الاجابة الصحيحة',
                          ),
                     ),
                     DropdownMenuItem<int>(
                       value: 2,
                       child: Text('صح ام خطأ',

                       ),
                     ),
                     DropdownMenuItem<int>(
                       value: 3,
                       child: Text('اختيار من متعدد',

                       ),
                     ),
                     DropdownMenuItem<int>(
                       value: 4,
                       child: Text('مقالي',

                       ),
                     ),
                   ],
                   onChanged: (v) {
                     setState(() {
                       selectedItem = v;
                     });
                   },
                 ),
               ),
               SizedBox(
                 width: MediaQuery.of(context).size.width-(MediaQuery.of(context).size.width/2)-80,
                 child: TextField(
                   keyboardType: TextInputType.number,
                   style:  GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.bold),
                   decoration: InputDecoration(
                     labelText: "درجةالسؤال",
                      labelStyle:GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.black),
                      hintText:  'ادخل درجة السؤال',
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(
                         color: Colors.black38,
                           width: 1,
                           strokeAlign: StrokeAlign.outside,
                           style: BorderStyle.solid),
                     ),

                   ),
                 ),

               ),
             ],
           ),
              if (selectedItem == 1)
                const choices(),
              if (selectedItem == 2)
                const Correctandcover(),
              if (selectedItem == 3)
                const Multiplechoice(),
              if (selectedItem == 4)
                const TextFieldWidget(
                 ),
            ],
        )


    );
  }
}
