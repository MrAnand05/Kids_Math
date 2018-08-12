import 'package:flutter/material.dart';
import 'package:kids_math/RandomNumberG.dart';
import 'package:kids_math/button.dart';
import 'dart:math';
import 'package:kids_math/buttonStateful.dart';
import 'package:kids_math/rod.dart';

class LevelOne extends StatefulWidget {
  LevelOneState levelOneState;
  @override
  State<StatefulWidget> createState() {
    levelOneState = new LevelOneState();
    return levelOneState;
  }
}

class LevelOneState extends State<LevelOne> {
  bool _isAnswered=false;
  bool get isAnswered => _isAnswered;
  set isAnswered(bool sta) => _isAnswered = sta;
  
  int a = generateRandomNo(min: 1,max: 10);
  int b = generateRandomNo(min: 1,max: 10);
  int c = Random().nextInt(3);
  List<int> options = new List(4);
  final numberS = TextStyle(
    fontSize: 80.0,
    fontFamily: 'ModernAntiqua',
  );
  final optionS = TextStyle(
    fontSize: 70.0,
    fontFamily: 'ModernAntiqua',
  );

  @override
  Widget build(BuildContext context) {
    isAnswered=false;
    options[c] = a + b;
    for (int i = 0; i < options.length; i++) {
      if (i != c) options[i] = generateRandomNo(min: 1,max: 18);
    }
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[Icon(Icons.check), Icon(Icons.cancel)],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 30.0, 5.0, 0.0),
                child:
                    createCircle(number: a, radius: 105.0, textStyle: numberS,color: Colors.greenAccent),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  '+',
                  style: numberS,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 30.0, 5.0, 0.0),
                child:
                    createCircle(number: b, radius: 105.0, textStyle: numberS,color: Color(0XFFCE93D8)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  '=',
                  style: numberS,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: createRod(a,'+',b),
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          Divider(
            height: 40.0,
            color: Colors.lightGreen,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              cCB(
                label: options[0],
                result: a + b,
                isAnswered: isAnswered,
                onTap: () {},
                key: UniqueKey(),
              ),
              cCB(
                label: options[1],
                result: a + b,
                isAnswered: isAnswered,
                onTap: () {},
                key: UniqueKey(),
              ),
              cCB(
                label: options[2],
                result: a + b,
                isAnswered: isAnswered,
                onTap: () {},
                key: UniqueKey(),
              ),
              cCB(
                label: options[3],
                result: a + b,
                isAnswered: isAnswered,
                onTap: () {},
                key: UniqueKey(),
              ),
            ],
          ),
          Divider(
            height: 40.0,
            color: Colors.lightGreen,
          ),
          button('Next', () {
            setState(() {
              isAnswered = false;
              a = generateRandomNo(min: 1,max: 10);
              b = generateRandomNo(min: 1,max: 10);
              c = Random().nextInt(3);
            });
          })
        ],
      ),
    );
  }
}

  Widget createCircle(
      {double radius = 90.0,
      Color color = Colors.pinkAccent,
      int number = 10,
      TextStyle textStyle}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: color),
      height: radius,
      width: radius,
      child: Center(
          child: Text(
        number.toString(),
        style: textStyle,
      )),
    );
  }

Widget createCircleB({int label, Function onTap}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90.0), color: Colors.blueAccent),
    height: 90.0,
    width: 90.0,
    child: Material(
      color: Colors.transparent,
      child: InkResponse(
        highlightShape: BoxShape.circle,
        highlightColor: Colors.purple[300],
        onTap: onTap,
        child: Center(
            child: Text(
          label.toString(),
          style: TextStyle(fontSize: 60.0),
        )),
      ),
    ),
  );
}
