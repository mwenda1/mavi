import 'package:flutter/material.dart';

import '../utils/styles.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: Styles.headLineStyle1.copyWith(color: Colors.black)),
      ],
    );
  }
}