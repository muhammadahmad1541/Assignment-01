import 'dart:ui';

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final List<String> msg;
  final int msgIndex;
  MyText(this.msg,this.msgIndex);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(msg[msgIndex],
        style: TextStyle(
          color: Colors.redAccent,
          fontSize: 25,
        ),
        ),
    );
  }
}