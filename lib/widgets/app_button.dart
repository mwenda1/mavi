import 'package:flutter/material.dart';

import '../utils/layout.dart';
import '../utils/styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  const AppButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Layout.getWidth(12), horizontal: Layout.getHeight(10)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Layout.getHeight(10)),
        border: Border.all(
          color: Styles.primaryColor,
          width: 2,
        ),
        color: Colors.white,
      ),
      child: Row(children: [
        Text(text, style: Styles.headLineStyle1.copyWith(color: Styles.primaryColor)),
      ],
      ),
      );
  }
}