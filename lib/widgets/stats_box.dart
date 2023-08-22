import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/layout.dart';
import '../utils/styles.dart';

class StatsBox extends StatelessWidget {
  final int statsFigure;
  final String statsText;
  final Color boxColor;
  const StatsBox({super.key, required this.statsFigure, required this.statsText, required this.boxColor});

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Container(
      width: size.width * 0.4,
      height: Layout.getHeight(164),
      padding: EdgeInsets.symmetric(vertical: Layout.getWidth(15), horizontal: Layout.getHeight(15)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Layout.getHeight(10)),
        color: boxColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("$statsFigure", style: Styles.headLineStyle1),
        Gap(Layout.getHeight(40)),
        Gap(Layout.getWidth(20)),
        Text(statsText, style: Styles.headLineStyle2),
      ],
      ),
      );
  }
}