import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
//import 'package:gap/gap.dart';
import 'package:mavi/utils/layout.dart';
import 'package:mavi/widgets/star_container.dart';
//import 'package:mavi/widgets/star_container.dart';

//import '../utils/styles.dart';

class ScansLayout extends StatelessWidget {
  final Map<String, dynamic> scanView;
  const ScansLayout({Key? key, required this.scanView}) : super(key: key);
  //const ClientLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Client Username: ${scanView['username']} has stars ${scanView['date']}");
    return Container(
            padding: const EdgeInsets.only(left: 10),
            width: Layout.getWidth(360),
            height: Layout.getHeight(120),
            child: Column(
              children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("${scanView['username']}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          children: [                              
                           Text("${scanView['date']}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ]),
                      ],
                      ), 
                      const Gap(10),
                      Container(
                      width: Layout.getWidth(60),
                      height: Layout.getHeight(60),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/qr_code_image.png"),
                          //BoxFit.cover,
                        ),
                      ),
                    ),    
                  ],
                  )
              ]
              ),
          );
  }
}