import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubtitleTextWidget extends StatelessWidget {
  const SubtitleTextWidget({super.key,
    required this.label,
    this.color,
    this.fontSize=18,
    this.fontStyle=FontStyle.normal,
    this.fontWeight=FontWeight.normal,
    this.textDecoration=TextDecoration.none});
  final String label;
  final Color? color;
  final double fontSize;
  final FontStyle fontStyle;
  final FontWeight? fontWeight;
  final TextDecoration textDecoration;
  @override
  Widget build(BuildContext context) {
    return Text(
        label,
        style:TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontStyle: fontStyle,
        decoration: textDecoration,
    ),
    );
  }
}
