import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
//import 'package:gap/gap.dart';
import 'package:mavi/utils/layout.dart';
import 'package:mavi/widgets/star_container.dart';
//import 'package:mavi/widgets/star_container.dart';

//import '../utils/styles.dart';

class ClientLayout extends StatelessWidget {
  final Map<String, dynamic> clientView;
  const ClientLayout({Key? key, required this.clientView}) : super(key: key);
  //const ClientLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.only(right: 80, left: 20),
            width: Layout.getWidth(360),
            height: Layout.getHeight(120),
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Layout.getWidth(100),
                      height: Layout.getHeight(120),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage("${clientView['image']}"),
                          //BoxFit.cover,
                        ),
                      ),
                    ),
                    const Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("${clientView['username']}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Gap(10),
                        const Row(
                          children: [                              
                            StarContainer(),
                            Gap(30),
                            StarContainer(),
                            Gap(30),
                            StarContainer(),
                            Gap(30),
                            StarContainer(),
                          //StarContainer(),
                        ]),
                      ],
                      ), 
                      const Gap(10),      
                  ],
                  )
              ]
              ),
          );
  }
}