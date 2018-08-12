import 'package:flutter/material.dart';

Widget button(String label, Function onTap) {
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
            child: Center(
                child: Text(
              label,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'ModernAntiqua',
                  fontSize: 24.0),
            )),
          ),
        ),
      ),
    ),
  );
}
