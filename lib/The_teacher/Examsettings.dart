import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Question.dart';
import 'errorText.dart';
class ExamSettings extends StatefulWidget {
  const ExamSettings({Key? key, required  }) : super(key: key);

  @override
  State<ExamSettings> createState() => _ExamSettingsState();
}

class _ExamSettingsState extends State<ExamSettings> {
  TextEditingController _controller1 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var _text = '';
  final List<String> items1 = [
    '2013-2014',
    '2014-2015',
    '2015-2016',
    '2016-2017',
    '2017-2018',
    '2018-2019',
    '2019-220',
    '2020-2021',
    '2021-2022',
    '2022-2023',
  ];
  final List<String> items2 = [
    'برمجة 1',
    'OOP',
    'DataBase1',
    'Flutter',
    'DataBase2',
    'اساسيات برمحة',
    'تصميم منطقي ',
  ];
  final List<String> items3 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
  ];
  final List<String> items4 = [
    '1', '2','3',

    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  final List<String> items0 = [
    'تقنية معلومات',
    'نظم معلومات ',
    'امن سبراني ',
    'ذكاء اصطناعي ',
    'محاسبة',

  ];
  final List<String> items00 = [
    'المستوى الاول',
    'المستوى الثاني',
    'المستوى الثالث',
    'المستوى الرابع',

  ];



  // The current selected value of the dropdown menu
  String? selectedValue1;
  String? selectedValue2;
  String? selectedValue3;
  String? selectedValue4;
  String? selectedValue0;
  String? selectedValue00;



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
     child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
             padding: const  EdgeInsets.all(5),

             alignment: Alignment.centerRight,
             child: Column(
              children: [
                const SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال اسم الاختبار';
                    }
                    return null;
                  },
                  onChanged: (text) => setState(() => _text),
                  controller: _controller1,
                  //keyboardType: TextInputType.number,
                  style: GoogleFonts.robotoCondensed(fontSize: 15,),
                  decoration: InputDecoration(
                    labelText: "أسم الاختبار",
                    hintText: "ادخل اسم الاختبار هنا",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                          strokeAlign: StrokeAlign.outside,
                          style: BorderStyle.solid),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                DropdownButtonFormField<String>(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'اختيار التخصص الجامعي ';
                    }
                    return null;
                  },
                  // The value of the TextField
                  value: selectedValue0,
                  // The hint text to display when the value is null
                  hint: Text('اختر التخصص من هنا'),
                  // The items to display in the dropdown menu
                  items: items0.map((String item0) {
                    return DropdownMenuItem<String>(
                      value: item0,
                      child: Text(item0),
                    );
                  }).toList(),
                  // The callback when the user selects an item
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue0 = newValue;
                    });
                  },
                  // The decoration of the TextField
                  decoration: InputDecoration(
                    labelText: 'التخصص',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                DropdownButtonFormField<String>(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'اختيار المستوى الجامعي';
                    }
                    return null;
                  },
                  // The value of the TextField
                  value: selectedValue00,
                  // The hint text to display when the value is null
                  hint: Text('اختر المستوى من هنا '),
                  // The items to display in the dropdown menu
                  items: items00.map((String item00) {
                    return DropdownMenuItem<String>(
                      value: item00,
                      child: Text(item00),
                    );
                  }).toList(),
                  // The callback when the user selects an item
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue00 = newValue;
                    });
                  },
                  // The decoration of the TextField
                  decoration: InputDecoration(
                    labelText: 'المستوى الدراسي',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                DropdownButtonFormField<String>(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'اختيار اسم المادة';
                    }
                    return null;
                  },
                  value: selectedValue2,
                  // The hint text to display when the value is null
                  hint: Text('اختر المادة الدراسية من هنا '),
                  // The items to display in the dropdown menu
                  items: items2.map((String item2) {
                    return DropdownMenuItem<String>(
                      value: item2,
                      child: Text(item2),
                    );
                  }).toList(),
                  // The callback when the user selects an item
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue2 = newValue;
                    });
                  },
                  // The decoration of the TextField
                  decoration: InputDecoration(
                    labelText: 'اسم المادة',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء تحديد الوقت';
                    }
                    return null;
                  },
                  onChanged: (text) => setState(() => _text),
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.robotoCondensed(fontSize: 15,),
                  decoration: InputDecoration(
                    labelText: "وقت الاختبار بالدقائق",
                    hintText: "ادخل اسم الاختبار هنا",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                          strokeAlign: StrokeAlign.outside,
                          style: BorderStyle.solid),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                DateTimePicker(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'تحديد تاريخ بداية الاختبار';
                    }
                    return null;
                  },
                  type: DateTimePickerType.dateTime,

                  initialValue: DateTime.now().toString(),
                  icon: Icon(Icons.event),
                  dateMask: 'dd/MM/yyyy HH:mm',
                  // Use the firstDate and lastDate arguments to set the range of selectable dates
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),

                  // Use the onChanged, onSaved, and validator arguments to handle the input events and validation
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                  decoration: InputDecoration(
                    labelText: 'حدد تاريخ بداية الاختبار',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                DateTimePicker(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'تحديد تاريخ نهاية الاختبار';
                    }
                    return null;
                  },
                  type: DateTimePickerType.dateTime,
                  // Use the initialValue argument to set the initial value of the widget
                  initialValue: DateTime.now().toString(),
                  // Use the icon argument to display an icon on the widget
                  icon: Icon(Icons.event),
                  // Use the dateMask argument to format the date and time as strings
                  dateMask: 'dd/MM/yyyy HH:mm',
                  // Use the firstDate and lastDate arguments to set the range of selectable dates
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),

                  // Use the onChanged, onSaved, and validator arguments to handle the input events and validation
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                  decoration: InputDecoration(
                    labelText: 'حدد تاريخ نهاية الاختبار',
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context,rootNavigator:true ).push(

                          MaterialPageRoute(
                              builder: (context) => QuestionSelection()));
                              ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data',

                        )),

                      );
                    } else {

                      return null;
                    }
                  },

                  child:  Text('Submit',

                    style: Theme.of(context).textTheme.headline6,

                  ),
                ),


              ],
             ),


           ),

         ],
     ),
    );
  }
}
