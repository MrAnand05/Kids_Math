import 'package:flutter/material.dart';

class RotationZTransition extends AnimatedWidget {
  const RotationZTransition({
    Key key,
    @required Animation<double> turns,
    this.child,
  }) : super(key: key, listenable: turns);

  Animation<double> get turns => listenable;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final double turnsValue = turns.value;
    final Matrix4 transform = new Matrix4.rotationY(turnsValue);
    return new Transform(
      transform: transform,
      alignment: Alignment.topLeft,
      child: child,
    );
  }
}