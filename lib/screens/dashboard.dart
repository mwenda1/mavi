import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mavi/routes/routes.dart';
import 'package:mavi/utils/card_colors.dart';
import 'package:mavi/utils/layout.dart';
import 'package:mavi/widgets/app_button.dart';
import 'package:mavi/widgets/app_divider.dart';
import 'package:mavi/widgets/heading_text.dart';
import 'package:mavi/widgets/stats_box.dart';

import '../utils/styles.dart';
import '../widgets/header.dart';
import '../widgets/star_container.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Gap(20),
                const Header(),
                const AppDivider(),
                const Gap(10),

                //Section after the first divider, Hi <name>, Discount card, Edit and QRCode Buttons
                Column(children: [
                  const HeadingText(text: "Hi Tariro,"),
                  const Gap(10),
                  Container(
                    height: Layout.getHeight(200),
                    width: Layout.getWidth(360),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Layout.getHeight(20)),
                      color: Cardcolors.blue,
                    ),
                    child: Center(child: Text("Add Discount Card", style: Styles.headLineStyle1),)

                  ),
                  Gap(Layout.getHeight(20)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: Layout.getWidth(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AppButton(text: "Edit"),
                        Gap(Layout.getWidth(50)),
                        const AppButton(text: "QR Code"),
                      ],
                    ),
                  ),
                  const Gap(20),
                  const AppDivider(),
                  const Gap(10),
                  const HeadingText(text: "Your Statistics"),
                  const Gap(20),
                  Row(children: [               
                    InkWell(
                      child: const StatsBox(statsFigure: 0, statsText: "Clients", boxColor: Colors.green),
                      onTap: () {
                        Get.toNamed(RoutesClass.getClientsRoute());
                      },
                    ),
                    Gap(Layout.getWidth(20)),
                    InkWell(
                      child: const StatsBox(statsFigure: 0, statsText: "Scans", boxColor: Color.fromARGB(255, 231, 222, 97)),
                      onTap: () {
                        Get.toNamed(RoutesClass.getScansRoute());
                      },
                    )               
                  ],
                  ),

                  //Section after the second divider, Your Clients
                ],             
                )
                ],
                ),
          ),
        ],
      ),
    );
  }
}