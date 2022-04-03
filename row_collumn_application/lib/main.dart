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
        appBar: AppBar(
          title: Text("Latihan Row And Collumn"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Text 1"),
            Row(
              children: [Text("Row Column 1")],
            ),
            Text("Text 2"),
            Text("Text 3"),
            Text("Text 4"),
            Row(
              children: [Text("Row Colum 4")],
            )
          ],
        ),
      ),
    );
  }
}
