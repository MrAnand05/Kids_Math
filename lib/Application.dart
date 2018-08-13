import 'package:flutter/material.dart';
import 'package:kids_math/Level1.dart';
import 'dart:math';

int generateRandomNo({int min, int max}) {
  return min + Random().nextInt(max - min);
}

Widget buttonTextStyle({String label}) {
  return Text(
    label,
    style: TextStyle(
        color: Colors.white, fontFamily: 'ModernAntiqua', fontSize: 24.0),
  );
}

Widget button(Widget label, Function onTap) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.pink.withOpacity(0.6),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkResponse(
            highlightShape: BoxShape.circle,
            radius: 200.0,
            onTap: onTap,
            child: Center(child: label),
          ),
        ),
      ),
    ),
  );
}

class starScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyInheritedWidgetState state2 = MyInheritedWidget.of(context);
    return Container(
      height: 90.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: state2.scoreTens,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: state2.scoreOnce.length==0?[Icon(Icons.star_border,size: 35.0,)]:state2.scoreOnce,
          )
        ],
      ),
    );
  }
}
