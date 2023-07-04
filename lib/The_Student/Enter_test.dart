import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Question_settings/quiz_screen.dart';

// class Enterthetest extends StatefulWidget {
//   const Enterthetest({Key? key}) : super(key: key);
//
//   @override
//   State<Enterthetest> createState() => _EnterthetestState();
// }
//
// class _EnterthetestState extends State<Enterthetest> {
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(textDirection: TextDirection.rtl,child:Scaffold(
//       appBar: AppBar(
//         title: Text(''),
//         centerTitle: true,
//         elevation: 12,
//       ),
//       backgroundColor: Colors.grey[300],
//
//       body: Column(
//        children:<Widget> [
//          SizedBox(height:1,),
//          Container(
//            width: MediaQuery.of(context).size.width,
//            height: MediaQuery.of(context).size.height * 0.30,
//            decoration: BoxDecoration(
//              image: DecorationImage(
//                image: AssetImage('assets/Multiple.png'),
//                fit: BoxFit.cover
//              ),
//            ),
//            child: Stack(
//              children: <Widget>[
//                Positioned(
//                  left: 30.0,
//                    bottom: 30.0,
//                    child: Text('asd',
//                    style: TextStyle(
//                      fontFamily: 'Mhjg',
//                      fontWeight: FontWeight.w600,
//                      fontSize: 20.0,
//                      letterSpacing: 1.5,
//                      color: Colors.white70,
//                    ),
//                    )
//                )
//              ],
//            ),
//          ),
//          Container(
//            margin: EdgeInsets.symmetric(horizontal: 25.0),
//            child: Column(
//              children:<Widget> [
//                SizedBox(height: 20.0,),
//                TextField(
//                  //keyboardType: TextInputType.number,
//                  style: GoogleFonts.robotoCondensed(fontSize: 15),
//                  decoration: InputDecoration(
//                    labelText: "كود الاختبار",
//                    hintText: "اكتب كود الاختبار هنا",
//                    border: OutlineInputBorder(
//                      borderRadius: BorderRadius.circular(9),
//                      borderSide: BorderSide(
//                          color: Theme.of(context).primaryColor,
//                          width: 2,
//                          strokeAlign: StrokeAlign.outside,
//                          style: BorderStyle.solid),
//                    ),
//                  ),
//                ),
//                SizedBox(height: 30),
//                Padding(
//                  padding: const EdgeInsets.symmetric(horizontal: 20),
//                  child: GestureDetector(
//                    child: Container(
//                      padding: EdgeInsets.all(10),
//                      decoration: BoxDecoration(
//                          color: Colors.cyan,
//                          borderRadius: BorderRadius.circular(9)),
//                      child: Center(
//                        child: Text(
//                          'دخول',
//                          style: GoogleFonts.robotoCondensed(
//                            color: Colors.white,
//                            fontWeight: FontWeight.bold,
//                            fontSize: 18,
//                          ),
//                        ),
//
//                      ),
//
//                    ),
//
//                  ),
//
//                ),
//              ],
//
//            ),
//
//          ),
//
//        ],
//
//       ),
//     ),
//     );
//
//   }
// }

class Enterthetest extends StatelessWidget {
   Enterthetest({Key? key}) : super(key: key);
  final _textConntroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Directionality(textDirection: TextDirection.rtl,child:Scaffold(
     appBar: AppBar(
       elevation: 8,
       backgroundColor: Colors.white12,
       brightness: Brightness.light,
     ),
      body: Column(
        children: [
          Container(
            color: Colors.indigo,
            width:400,
            height:200,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(0xFFB1BCCD + 2),
                              ),
                              child: Text(
                                ' Online Exams',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        maxRadius: 80.0,
                        minRadius: 80.0,
                        backgroundImage: AssetImage('assets/Multiple.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.indigo,
              child: Container(
                width: 900,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 25,),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                          controller: _textConntroller,
                          style: GoogleFonts.robotoCondensed(fontSize: 13),
                          decoration: InputDecoration(
                            labelText: "كود الاختبار",
                            hintText: "اكتب كود الاختبار هنا",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2,
                                  strokeAlign: StrokeAlign.outside,
                                  style: BorderStyle.solid),
                            ),
                            suffixIcon: IconButton(
                              onPressed: (){
                                _textConntroller.clear();
                              },
                              icon: const Icon(Icons.clear),
                            ),
                          ),
                        ),
                        ),
                        SizedBox(height: 10),
                        MaterialButton(onPressed:  (){                               Navigator.of(context,rootNavigator:true ).push(


                            MaterialPageRoute(
                                builder: (context) => QuizScreen()));},
                          child:  Text('دخول',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}

