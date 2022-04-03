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
            appBar: AppBar(title: const Text("Latihan Stack dan Allign")),
            body: Stack(
              children: <Widget>[
                //(LAPISAN)
                //background Lapisan 1
                Column(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                color: Colors.green,
                              ),
                              flex: 1,
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.blueGrey,
                              ),
                              flex: 1,
                            ),
                          ],
                        )),
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                color: Colors.blueGrey,
                              ),
                              flex: 1,
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.green,
                              ),
                              flex: 1,
                            ),
                          ],
                        ))
                  ],
                ),
                //listview dengan text Lapisan 2
                ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                            "Ini ADalah Text yang ada di lapisan tengah dari stack.",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                            "Ini ADalah Text yang ada di lapisan tengah dari stack.",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                            "Ini ADalah Text yang ada di lapisan tengah dari stack.",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                            "Ini ADalah Text yang ada di lapisan tengah dari stack.",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                            "Ini ADalah Text yang ada di lapisan tengah dari stack.",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                            "Ini ADalah Text yang ada di lapisan tengah dari stack.",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                            "Ini ADalah Text yang ada di lapisan tengah dari stack.",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //button ditengah bawah Lapisan 3
                Align(
                    alignment: const Alignment(0.95, 0.95),
                    child: ElevatedButton(
                        child: const Text("My Button"), onPressed: () {}))
              ],
            )));
  }
}
