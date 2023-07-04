import 'package:flutter/material.dart';

class TestResult extends StatefulWidget {
  @override
  _TestResultState createState() => _TestResultState();
}

class _TestResultState extends State<TestResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('نتيجخ الامتحان'),
        centerTitle: true,
        backgroundColor: Color(0xFF00695C),
      ),
      body:Container(
        
        child: Padding(
          
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            
            children: [
              
              
              Container(
                 decoration: BoxDecoration(
                  color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Text 1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Text 2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Text 3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Text 4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



