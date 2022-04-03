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
  String message = "Ini Adalah Text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                message,
              ),
              ElevatedButton(
                // ignore: prefer_const_constructors
                child: Text("Tekan Saya"),
                onPressed: () {
                  setState(() {
                    message = "Tombol Sudah Ditekan";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
