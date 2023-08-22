import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mavi/utils/layout.dart';
import 'package:mavi/widgets/star_container.dart';

import '../utils/styles.dart';

class BusinessCardView extends StatelessWidget {
  final Map<String, dynamic> businessCard;
  const BusinessCardView({Key? key, required this.businessCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("businessCard has Business Name: ${businessCard['business_name']} and the Tagline is ${businessCard['tagline']} and these are the stars ${businessCard['stars']} discount is ${businessCard['discount']}");
    //final size = Layout.getSize(context);
    return SizedBox(
      width: Layout.getWidth(360),
      height: Layout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: Layout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: businessCard['card_color'],
                borderRadius: BorderRadius.all(Radius.circular(Layout.getHeight(20))
                )
                ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                Row(children: [
                  Text("${businessCard['business_name']}", style: Styles.headLineStyle1),
                ]
                ),
                Row(children: [
                  Text("${businessCard['tagline']}", style: Styles.textstyle),
                ]),
                const Gap(25),
                const Row(children: [
                  Spacer(),
                  StarContainer(),
                  Spacer(),
                  StarContainer(),
                  Spacer(),
                  StarContainer(),
                  Spacer(),
                  StarContainer(),
                  Spacer(),
                  //StarContainer(),
                ]),
                const Gap(25),
                Row(children: [
                  Text("${businessCard['discount']}", style: Styles.headLineStyle3.copyWith(color: Colors.black)),
                ]),
              ],
              ),
              ),
          ]
          ),
          )
    );
  }
}