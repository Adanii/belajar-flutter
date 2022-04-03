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
  int counter = 1;
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan List View"),
      ),
      body: ListView(children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  child: Text("Tambah Data"),
                
                  onPressed: () {
                    setState(() {
                      widgets.add(Text("Data ke - " + counter.toString()));
                      counter++;
                    });
                  }),
              ElevatedButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    setState(() {
                      if (widgets.isNotEmpty) {
                        widgets.removeLast();
                        counter--;
                        if (counter == 0) {
                          counter++;
                        }
                      }
                    });
                  }),
            ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: widgets,
        )
      ]),
    ));
  }
}
