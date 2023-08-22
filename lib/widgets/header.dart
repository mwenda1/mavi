import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/layout.dart';
import '../utils/styles.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text("Mavi", style: Styles.headLineStyle1),
      const Gap(10),
      Container(
        height: Layout.getHeight(50),
        width: Layout.getWidth(50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage("assets/images/mavi_logo_1.png"),
            fit: BoxFit.cover,
          ),
        ),),
      const Gap(200),
      Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage("assets/images/user.png"),
            fit: BoxFit.cover,
          ),
        ),
        ),
    ],             
    );
  }
}