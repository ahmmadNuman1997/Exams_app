import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'DropdownButton.dart';
import 'TextN.datr.dart';
import 'errorText.dart';

class QuestionSelection extends StatefulWidget {
  Exam ?exam;
   QuestionSelection({Key? key  ,this.exam }) : super(key: key);
  @override
  State<QuestionSelection> createState() => _QuestionSelectionState();
}

class _QuestionSelectionState extends State<QuestionSelection> {
  bool _isFieldVisible = false;
  bool outlinedSelected = false;
  bool standardSelected = false;
  bool filledSelected = false;
  bool tonalSelected = false;
  bool _imgFile = false;
  List<Widget> cards = [];
  List<bool> deleted = [];
  List<TextEditingController> textEditingController = [];
  int? selectedItem = 1;
  bool _load = false;
  late File imgFile;
  final imgPicker = ImagePicker();
  var index;
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Widget displayImage() {
    if (imgFile == _imgFile) {
      return Text('No image Selected');
    } else {
      return Image.file(
        imgFile,
        width: 350,
        height: 330,
      );
    }
  }

  @override


  void initState() {
    // TODO: implement initState
    super.initState();
    if( widget.exam!=null&& widget.exam?.image!=null){
      setState(() {
        imgFile=File("${widget.exam?.image}");
        _load=true;
      });
    }
  }
  void openCamera() async {
    var imgCamera = await imgPicker.getImage(source: ImageSource.camera);
    setState(() {
      imgFile = File(imgCamera!.path);
      _load = true;
    });
    Navigator.of(context).pop();
  }

  void openGallery() async {
    var imGallery = await imgPicker.getImage(source: ImageSource.gallery);
    setState(() {
      _load = true;
      imgFile = File(imGallery!.path);
    });
    Navigator.of(context).pop();
  }


  Future<void> showOptionsDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(

            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('معرض الصور',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54
                        ),
                      ),
                      IconButton(
                        color: Colors.black54,
                        icon: const Icon(Icons.photo),
                        onPressed: () {
                          openGallery();
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('الكاميرا',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54
                        ),
                      ),
                      IconButton(
                        color: Colors.black54,
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {
                          openCamera();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget CardDisplay(int index, String name, bool isdeleted) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        decoration: BoxDecoration(



           color:Colors.white,

            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black, width: 1)),
        child: Column(

          // crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SizedBox(height: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              child: Text(

                '${AppConstant.page} (${index + (1)})',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: TextField(
                style:
                    GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "اكتب السؤال هنا ",
                  labelText: "السؤال",
                  // hintText:  widget!=null?"اكتب السؤال هنا": widget!,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Color(0xFFD8E0ED),
                        width: 1,
                        strokeAlign: StrokeAlign.outside,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (_imgFile)
            _load ? displayImage() :
           const SizedBox(
              height: 7,
            ),
            SizedBox(width: 10),
            if (isdeleted) const DropdownButtonExample(),
            Divider(
              height: 20,
              color: Colors.black12,
              thickness: 1.5,
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: () {
                        _imgFile = !_imgFile;
                          showOptionsDialog(context);
                      },
                      child:  Text( _imgFile ?  'حذف صورة' : 'أضف صورة ' ,
                        style: GoogleFonts.robotoCondensed(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black

                        ),
                      ),
                    ),

                    const  SizedBox(width: 8),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _isFieldVisible = !_isFieldVisible;
                        });
                      },
                      child: Text(_isFieldVisible ? 'حذف شرح للإجابة' : 'أضف شرح للإجابة',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                   const SizedBox(width: 15),
                      Expanded(
                      child: Row(
                        children: [
                          IconButton(
                            color: Colors.redAccent,
                            iconSize: 40,
                            icon: const Icon(
                              Icons.delete_forever_outlined,
                            ),
                            onPressed: () {
                              deleteCard(index);
                            },
                          ),
                        ],
                      ),

                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 10),
            if (_isFieldVisible)
            Column(
              children: [
               SizedBox(
                 width: MediaQuery.of(context).size.width-(MediaQuery.of(context).size.width/12),
                 child: TextField(
                   style:
                   GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold),
                   decoration: InputDecoration(
                     hintText: "أضف تعبيرًا ذا صلة بحيث يكون السؤال النصي ذا صلة فقط",
                     labelText: "شرح للإجابة (اختياري)",
                     // hintText:  widget!=null?"اكتب السؤال هنا": widget!,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(
                           color: Theme.of(context).primaryColor,
                           width: 1,
                           strokeAlign: StrokeAlign.outside,
                           style: BorderStyle.solid),
                     ),
                   ),
                 ),
               ),
                 const SizedBox(height: 15),
              ],
            ),
          ],
        ),

      ),

    );
  }

  void addCard() {
    setState(() {
      int i = cards.length + 1;
      deleted.add(true);
      textEditingController.add(TextEditingController());
      cards.add(CardDisplay(i, "", deleted[i]));
    });
  }

  void deleteCard(int index) {
    setState(() {
      if (cards.isNotEmpty) {
        cards.removeAt(index);
        textEditingController.removeAt(index);
        for (int i = index; i < cards.length; i++) {
          Card card = cards[i] as Card;
          Padding padding = card.child as Padding;
          Row row = padding.child as Row;
          // Text text = row.children[0] as Text;

          row.children[0] = Text('${index + 1}. ');
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    bool isTapped = false;
    return Scaffold(


      backgroundColor: Colors.blueAccent[100],
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      '${AppConstant.exam_degree} : ${cards.length}',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '${AppConstant.number_threads} : ${cards.length}',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                flex: 1,
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: List.generate(
                  cards.length,
                  (index) => CardDisplay(index,
                      cards.length == 1 ? "delete" : "", deleted[index])),
            ),
          ),
           Row(
            children: [
              SizedBox(width: 16),

              Expanded(
                child: Row(
                  children: [
                    InkWell(
                      onTap: addCard,
                      child: AnimatedContainer(
                        duration: Duration(),
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Text(
                            'اضافة سؤال',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
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
                    InkWell(
                      onTap: () {
                        Navigator.of(context,rootNavigator:true ).push(
                          // context,

                            MaterialPageRoute(
                                builder: (context) => PassDataDemo()));
                      },
                       // onTap: addCard,
                      child: AnimatedContainer(
                        duration: Duration(),
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Text(
                            'حفظ مؤقت',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              Expanded(
                child: Row(
                  children: [
                    InkWell(

                      onTap: dispose,

                      // onTap: addCard,
                      child: AnimatedContainer(
                        duration: Duration(),
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Text(
                            'أنشاء الاختبار',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ),

            ],
          ),
        ],
      ),
    );
  }
}
