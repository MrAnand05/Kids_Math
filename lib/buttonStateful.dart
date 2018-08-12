import 'package:flutter/material.dart';
import 'package:kids_math/Level1.dart';

class cCB extends StatefulWidget {
  int label;
  int result;
  bool isAnswered;
  Function onTap;
  cCB({this.label, this.result, this.isAnswered, this.onTap, Key key})
      : super(
          key: key,
        );
  cCBState createState() => cCBState();
}

class cCBState extends State<cCB> {
  Color colorB = Colors.blueAccent;
  Color colorIC = Colors.transparent;
  Widget correctIncorrect() {
    return widget.label == widget.result
        ? Icon(
            Icons.check,
            color: colorIC,
            size: 60.0,
          )
        : Icon(
            Icons.cancel,
            color: colorIC,
            size: 60.0,
          );
  }
  @override
  Widget build(BuildContext context) {
    final LevelOne widgetA=context.ancestorWidgetOfExactType(LevelOne);
    final LevelOneState state=widgetA?.levelOneState;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0), color: colorB),
      height: 90.0,
      width: 90.0,
      child: Material(
        color: Colors.transparent,
        child: InkResponse(
          highlightShape: BoxShape.circle,
          highlightColor: Colors.purple[300],
          onTap: () {
            if (state.isAnswered) {
            } else {
              state.isAnswered=true;
              if (widget.label == widget.result) {
                colorIC = Colors.yellowAccent;
                colorB = Colors.greenAccent;
              } else {
                colorIC = Colors.yellowAccent;
                colorB = Colors.redAccent;
              }
              setState(() {});
            }
          },
          child: Center(
              child: Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              Center(
                child: Text(
                  widget.label.toString(),
                  style: TextStyle(fontSize: 60.0),
                ),
              ),
              Center(child: correctIncorrect())
            ],
          )),
        ),
      ),
    );
  }
}