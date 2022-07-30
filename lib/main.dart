import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicey',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int left = 1;
  int right = 1;

  void changeDice() => {
        left = Random().nextInt(6) + 1,
        right = Random().nextInt(6) + 1,
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("Dicey"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () => setState(() {
                    changeDice();
                  }),
                  child: Image.asset(
                    "images/dice$left.png",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () => setState(() {
                    changeDice();
                  }),
                  child: Image.asset(
                    "images/dice$right.png",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
