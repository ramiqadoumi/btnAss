import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Container(
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          elevation: 20,
                          shadowColor: Colors.grey,
                          padding: EdgeInsets.all(20),
                        ),
                        onPressed: () {
                          print("ElevatedButton1 Clicked");
                        },
                        child: Text("ElevatedButton1",style: TextStyle(fontWeight:FontWeight.bold),))),
                Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightGreenAccent[400],
                          onPrimary: Colors.white,
                          elevation: 20,
                          shadowColor: Colors.yellow,
                          padding: EdgeInsets.all(20),
                        ),
                        onPressed: () {
                          print("ElevatedButton2 Clicked");
                        },
                        child: Text("ElevatedButton2",style: TextStyle(fontWeight:FontWeight.bold)))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

