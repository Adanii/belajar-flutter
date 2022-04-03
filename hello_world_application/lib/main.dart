import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlueAccent,
                width: 100,
                height: 40,
                child: Text(
                  "Hello Bithces",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ))),
      ),
    );
  }
}
