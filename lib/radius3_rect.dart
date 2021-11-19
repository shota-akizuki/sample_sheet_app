import 'package:flutter/material.dart';

class Radius3Rect extends StatelessWidget {
  const Radius3Rect({
    this.color = gray200,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _decoration,
      width: 36,
      height: 5,
    );
  }

  Decoration get _decoration {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(3),
    );
  }
}

const gray200 = Color.fromARGB(255, 212, 212, 212);
