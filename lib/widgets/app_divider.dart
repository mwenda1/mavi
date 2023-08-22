import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
          Divider(
            height: 20,
            thickness: 2,
            //indent: 0,
            //endIndent: 0,
            color: Colors.black
        ),
      ]
    );
  }
}