import 'package:flutter/material.dart';

List<Widget> containers = new List<Widget>();

List<Widget> createRod(int firstRodCount, String sign, int secondRodCount) {
  containers.clear();
  for (int i = 0; i < firstRodCount; i++) {
    containers.add(Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 80.0,
        width: 10.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.greenAccent,
        ),
        child: Center(child: Text((i+1).toString())),
      ),
    ));
  }
  containers.add(Text(sign,style: TextStyle(fontSize: 40.0),));
  for (int i = 0; i < secondRodCount; i++) {
    containers.add(Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 80.0,
        width: 10.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0XFFCE93D8),
        ),
        child: Center(child: Text((i+1).toString())),
      ),
    ));
  }  
  return containers;
}
