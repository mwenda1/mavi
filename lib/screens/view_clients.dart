import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mavi/utils/layout.dart';
import 'package:mavi/utils/styles.dart';

import '../utils/clients_list.dart';
import '../widgets/app_divider.dart';
import '../widgets/client_layout_widget.dart';
import '../widgets/heading_text.dart';

class ViewClients extends StatelessWidget {
  const ViewClients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primary, elevation: 0, title: const Text("Your Clients"),), 
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Gap(20),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: clientsList.map((view) => ClientLayout(clientView: view,)).toList(),
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