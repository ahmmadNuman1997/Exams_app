import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Correctandcover extends StatefulWidget {
  const Correctandcover({Key? key}) : super(key: key);

  @override
  State<Correctandcover> createState() => _CorrectandcoverState();
}

class _CorrectandcoverState extends State<Correctandcover> {
  String? checkandclear;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Radio(
                  value: "check",
                  groupValue: checkandclear,
                  onChanged: (val) {
                    setState(() {
                      checkandclear = val;
                    });
                  }),
              Text(
                '',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 15.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Icon(Icons.check, color: Colors.green, size: 40),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Radio(
                  value: "clear",
                  groupValue: checkandclear,
                  onChanged: (val) {
                    setState(() {
                      checkandclear = val;
                    });
                  }),
              Text(
                '',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 15.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.clear, color: Colors.red, size: 40),
            ],
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
