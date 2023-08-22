import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mavi/screens/business_card_widget.dart';
import 'package:mavi/utils/layout.dart';
import 'package:mavi/utils/styles.dart';

import '../utils/available_cards_list.dart';

class ViewAllCards extends StatelessWidget {
  const ViewAllCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primary, elevation: 0, title: const Text("Available Cards"),), 
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Available Cards", style: Styles.headLineStyle1),
              ],
              ),
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: availableCardsList.map((card) => BusinessCardView(businessCard: card,)).toList(),
          ),
          ),
        ]
      ),
    );
  }
}