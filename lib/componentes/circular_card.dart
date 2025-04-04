import 'package:flutter/material.dart';

class CircularCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        color: Color(0xfff8e9c6),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
