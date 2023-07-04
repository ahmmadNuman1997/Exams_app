import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Multiplechoice extends StatefulWidget {
  const Multiplechoice({Key? key}) : super(key: key);

  @override
  State<Multiplechoice> createState() => _MultiplechoiceState();
}

class _MultiplechoiceState extends State<Multiplechoice> {
  bool? _isChecked = false;
  bool? _isChecked1 = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return   Container(
      child:  Padding(
        padding: const EdgeInsets.only(top: 10),
        child:   Column(
           children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue;
                          });
                        },
                        activeColor: Colors.orangeAccent,
                        checkColor: Colors.white70,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'الاجابة 1',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  // color: Colors.green,
                                  // width: 2,
                                  style: BorderStyle.none,
                                  strokeAlign: StrokeAlign.center),
                            ),
                          ),
                          style: const TextStyle(
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
                      Checkbox(
                        value: _isChecked1,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked1 = newValue;
                          });
                        },
                        activeColor: Colors.orangeAccent,
                        checkColor: Colors.white70,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'الاجابة 2',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  // color: Colors.green,
                                  // width: 2,
                                  style: BorderStyle.none,
                                  strokeAlign: StrokeAlign.center),
                            ),
                          ),
                          style: const TextStyle(
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
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Checkbox(
                        value: _isChecked2,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked2 = newValue;
                          });
                        },
                        activeColor: Colors.orangeAccent,
                        checkColor: Colors.white70,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'الاجابة 2',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  // color: Colors.green,
                                  // width: 2,
                                  style: BorderStyle.none,
                                  strokeAlign: StrokeAlign.center),
                            ),
                          ),
                          style: const TextStyle(
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
                      Checkbox(
                        value: _isChecked3,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked3 = newValue;
                          });
                        },
                        activeColor: Colors.orangeAccent,
                        checkColor: Colors.white70,
                      ),
                         Expanded(
                        child:  TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'الاجابة 3',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  // color: Colors.green,
                                  // width: 2,
                                  style: BorderStyle.none,
                                  strokeAlign: StrokeAlign.center),
                            ),
                          ),
                          style: const TextStyle(
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
      ),
    );
  }
}
