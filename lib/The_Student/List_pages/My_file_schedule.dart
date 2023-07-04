import 'package:flutter/material.dart';

class TableExampleApp extends StatefulWidget {
  const TableExampleApp({Key? key}) : super(key: key);

  @override
  State<TableExampleApp> createState() => _TableExampleApp();
}

class _TableExampleApp extends State<TableExampleApp> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,child: MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title:  Text('DataTable Sample',)),
        body:  DataTableExample(),

      ),
    ),
    );
  }
}

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: DataTable(

        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text(
                'اسم الطالب',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'أحمد محمد نعمان',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'الرقم الأكاديمي',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
              DataCell(Text(
                '2017110066',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'رقم الهاتف',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
              DataCell(Text(
                '774957273',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'المستوى الدراسي',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
              DataCell(Text(
                'المستوى الرابع',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'كلية',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
              DataCell(Text(
                'الهندسة',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'قسم',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
              DataCell(Text('it')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'المجموعة',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                  color: Colors.black,
                ),
              )),
              DataCell(Text('1')),
            ],
          ),
        ],
      ),
    );
  }
}
