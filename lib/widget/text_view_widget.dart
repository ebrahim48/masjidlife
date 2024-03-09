import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const TextView({super.key, required this.text,  required this.color,  required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: fontWeight,
        overflow: TextOverflow.ellipsis
    ),);
  }
}