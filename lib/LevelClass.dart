import 'package:flutter/material.dart';
import 'package:kids_math/Application.dart';

class LevelClass {
  int level;
  String operation;
  LevelClass({this.level, this.operation}) {}

  Widget bottomNavigationBar(
      int level, String operation, BuildContext context) {
    switch (level) {
      case 1:
        return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: button(Icon(Icons.rss_feed), () {
                Navigator.pop(context);
              }),
            ),
            Expanded(
              flex: 6,
              child: button(buttonTextStyle(label: 'ADD'),(){

              }),
            ),
          ],
        );
      case 2:
        return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: button(Icon(Icons.rss_feed), () {
                Navigator.pop(context);
              }),
            ),
            Expanded(
              flex: 3,
              child: button(buttonTextStyle(label: 'ADD'),(){

              }),
            ),
            Expanded(
              flex: 3,
              child: button(buttonTextStyle(label: 'SUB'),(){

              }),
            ),
          ],
        );
      case 3:
        return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: button(Icon(Icons.rss_feed), () {
                Navigator.pop(context);
              }),
            ),
            Expanded(
              flex: 2,
              child: button(buttonTextStyle(label: 'ADD'),(){

              }),
            ),
            Expanded(
              flex: 2,
              child: button(buttonTextStyle(label: 'SUB'),(){

              }),
            ),
            Expanded(
              flex: 2,
              child: button(buttonTextStyle(label: 'MUL'),(){

              }),
            ),
          ],
        );
    }
  }
}
