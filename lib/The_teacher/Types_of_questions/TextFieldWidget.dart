import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {


  @override
  Widget build(BuildContext context) => Column(

        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

            Text(
              ' ',
              style:
                  GoogleFonts.lato(fontSize: 10, fontWeight: FontWeight.bold),
            ),
           SizedBox(
            width: MediaQuery.of(context).size.width-30,
             child:  TextField(
               decoration: InputDecoration(
                 hintText: 'اكتب اجابة السؤال المقالي هنا',
                 hintStyle:    GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold),
                  labelText: "اكتب اجابة السؤال المقالي هنا",
                 labelStyle:  GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.black) ,
                 border: OutlineInputBorder(

                   borderRadius: BorderRadius.circular(10),
                   ),
                   focusedBorder:OutlineInputBorder(
                     borderSide: const  BorderSide(
                         color: Colors.black38,
                         width: 2,
                         style: BorderStyle.solid,
                         strokeAlign: StrokeAlign.center),
                   ),
               ),
               maxLines: 5,
               style:  GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold),
             ),
          ),

        ],
      );
}
