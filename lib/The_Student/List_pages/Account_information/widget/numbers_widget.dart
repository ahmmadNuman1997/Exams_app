import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      buildButton(context, 'المستوى', '3',),
      buildDivider(),
      buildButton(context, 'قسم', 'it'),
      buildDivider(),
      buildButton(context, 'كلية', 'الهندسة'),
    ],

  );
  Widget buildDivider() => Container(
    height: 50,
    child: VerticalDivider(),
  );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: GoogleFonts.lato(
            fontSize: 19,
            fontWeight: FontWeight.bold),
            ),
            SizedBox(height:8),
            Text(
              text,
              style: GoogleFonts.lato(
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}