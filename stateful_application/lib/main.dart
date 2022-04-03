import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  void kurangAngka() {
    setState(() {
      number = number - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 231, 122, 146),
            appBar: AppBar(
              title: Text("Statefulwidget Demo"),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      number.toString(),
                      style: TextStyle(
                        fontSize: 10 + number.toDouble(),
                      ),
                    ),
                    RaisedButton(
                      child: Text("Tambah Bilangan"),
                      color: Colors.amber,
                      onPressed: tekanTombol,
                    ),
                    RaisedButton(
                      child: Text("Kurangi Angka"),
                      onPressed: kurangAngka,
                    ),
                  ]),
            )));
  }
}
