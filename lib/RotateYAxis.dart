import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotationYTransition extends AnimatedWidget {
  const RotationYTransition({
    Key key,
    @required Animation<double> turns,
    this.child,
  }) : super(key: key, listenable: turns);

  Animation<double> get turns => listenable;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final double turnsValue = turns.value;
    final Matrix4 transform = new Matrix4.rotationY(turnsValue * math.pi * 2.0);
    return new Transform(
      transform: transform,
      alignment: Alignment.center,
      child: child,
    );
  }
}