import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mavi/utils/layout.dart';
import 'package:mavi/utils/styles.dart';

import '../utils/scans_list.dart';
import '../widgets/app_divider.dart';
import '../widgets/heading_text.dart';
import '../widgets/scan_layout_widget.dart';

class ScansScreen extends StatelessWidget {
  const ScansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primary, elevation: 0, title: const Text("Your Scans"),), 
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Gap(10),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: scansList.map((view) => ScansLayout(scanView: view,)).toList(),
                ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}