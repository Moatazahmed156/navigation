import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  final int index;
  Dots({required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(50),
            color: index == 1? Color(0xff953c81) : Colors.white,
          ),
        ),
        SizedBox(width: 2,),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(50),
            color: index == 2? Color(0xff953c81) : Colors.white,
          ),
        ),
        SizedBox(width: 2,),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ],
    );
  }
}
