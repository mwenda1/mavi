import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mavi/screens/business_card_widget.dart';
import 'package:mavi/utils/layout.dart';
import 'package:mavi/utils/styles.dart';

import '../routes/routes.dart';
import '../utils/available_cards_list.dart';
import '../utils/card_info_list.dart';
import '../widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Gap(20),
                const Header(),
                Column(
                  children: [
                      const Divider(
                        height: 20,
                        thickness: 2,
                        //indent: 0,
                        //endIndent: 0,
                        color: Colors.black
                    ),
                    const Gap(10),
                    Container(
                    height: Layout.getHeight(100),
                    width: Layout.getWidth(100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/mavi_bug.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),       
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: cardsList.map((card) => BusinessCardView(businessCard: card,)).toList()
          ),
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Available Cards", style: Styles.headLineStyle1),
                InkWell(
                  onTap: () {
                    Get.toNamed(RoutesClass.getViewAllCardsRoute());
                  },
                  child: 
                    Text("View All", 
                    style: Styles.textstyle.copyWith(color: const Color.fromARGB(255, 65, 117, 159)),
                    )
                    ),
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