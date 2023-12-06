import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/widgets/title_text.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontSize = 30});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(period: const Duration(seconds:6 ),
        baseColor: Colors.purple,
        highlightColor: Colors.red,
        child: TitlesTextWidget(
          label: 'Shop Smart',
          fontSize: fontSize,
        ),);
  }
}
