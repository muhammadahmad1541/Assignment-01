import 'dart:ui';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Assignment 01",
          style: TextStyle(
            fontSize: 28, 
          ),
        ),  
      ),
    );
  }
}