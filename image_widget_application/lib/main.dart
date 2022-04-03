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
            title: Text("Image Widget"),
          ),
          body: Stack(
            children: [
              Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            child: Image(
                              image: AssetImage("images/bebebiu.jpg"),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            child: Image(
                              image: AssetImage("images/bebebiu.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            child: Image(
                              image: AssetImage("images/bebebiu.jpg"),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            child: Image(
                              image: AssetImage("images/bebebiu.jpg"),
                            ),
                          ),
                          
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
