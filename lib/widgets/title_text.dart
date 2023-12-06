import 'package:flutter/cupertino.dart';

class TitlesTextWidget extends StatelessWidget {
  const TitlesTextWidget({
    Key?Key,
    required this.label,
    this.fontSize=20,
    this.color,
    this.maxLines,
    }):super(key: Key);
  final String label;
  final Color? color;
  final double fontSize;
  final int?maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      maxLines:maxLines,
      style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: color,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
