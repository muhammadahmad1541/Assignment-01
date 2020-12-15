
import 'dart:ui';

import 'package:Flutter_Assignment_01/textcontrol.dart';
import 'package:flutter/material.dart';
import './appbar.dart';
import './text.dart';
import './textcontrol.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _message = [
  "Yahooo! I'm doing my 1st flutter assignment.",
  "Now, the text is changed."
];
  int _messageIndex = 0;
  void _changeText() {
    setState(() {
      _messageIndex = _messageIndex + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _messageIndex < _message.length ? Column(
          children: [
            App(),
            MyText(_message,_messageIndex), 
            TextControl(_changeText),
          ],
        ) : Column(
          children: [
            App(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Assignment 01 completed!",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 28,
                ),),
            )
          ],
        )
    
      )
    );
  }
}
