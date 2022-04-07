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
          title: Text("Card Widget"),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10),
            child: ListView(
              children: [
                buildCard(Icons.account_circle, "Account"),
                buildCard(Icons.adb, "Andriod"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Icon(iconData),
          Text(text),
        ],
      ),
    );
  }
}
