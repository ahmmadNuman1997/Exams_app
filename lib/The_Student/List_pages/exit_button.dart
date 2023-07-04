import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [CupertinoAlertDialog].

void main() => runApp(const Exit());
class Exit extends StatefulWidget {
  const Exit({Key? key}) : super(key: key);

  @override
  State<Exit> createState() => _ExitState();
}

class _ExitState extends State<Exit> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: CupertinoApp(
        color: Colors.cyan,
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: AlertDialogExample(
        ),
      ) ,
    );
  }
}

class AlertDialogExample extends StatelessWidget {
  const AlertDialogExample({super.key});
  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => const CupertinoAlertDialog(
        actions: <CupertinoDialogAction>[
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(

        child: CupertinoAlertDialog(
          title: const Text('الخروج من التطبيق',
            style:TextStyle(
                fontSize: 15),
          ),
          content: const Text('هل تريد الخروج؟'),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                Navigator.of(context);
              },
              child: const Text('لا'),
            ),
            CupertinoDialogAction(
              isDestructiveAction: true,
              onPressed: () {
                exit(0);
              },
              child: const Text('نعم'),
            ),
          ],
        ),
      ),
    );
  }
}

